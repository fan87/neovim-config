local util = require 'lspconfig.util'
local lsp = vim.lsp

local function buf_cache(bufnr, client)
  local params = {}
  params['referrer'] = { uri = vim.uri_from_bufnr(bufnr) }
  params['uris'] = {}
  client.request('deno/cache', params, function(err, _result, ctx)
    if err then
      local uri = ctx.params.referrer.uri
      vim.api.nvim_err_writeln('cache command failed for ' .. vim.uri_to_fname(uri))
    end
  end, bufnr)
end

local function virtual_text_document_handler(uri, res, client)
  if not res then
    return nil
  end

  local lines = vim.split(res.result, '\n')
  local bufnr = vim.uri_to_bufnr(uri)

  local current_buf = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  if #current_buf ~= 0 then
    return nil
  end

  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
  vim.api.nvim_set_option_value('readonly', true, { buf = bufnr })
  vim.api.nvim_set_option_value('modified', false, { buf = bufnr })
  vim.api.nvim_set_option_value('modifiable', false, { buf = bufnr })
  lsp.buf_attach_client(bufnr, client.id)
end

local function virtual_text_document(uri, client)
  local params = {
    textDocument = {
      uri = uri,
    },
  }
  local result = client.request_sync('deno/virtualTextDocument', params)
  virtual_text_document_handler(uri, result, client)
end

local function denols_handler(err, result, ctx, config)
  if not result or vim.tbl_isempty(result) then
    return nil
  end

  local client = vim.lsp.get_client_by_id(ctx.client_id)
  for _, res in pairs(result) do
    local uri = res.uri or res.targetUri
    if uri:match '^deno:' then
      virtual_text_document(uri, client)
      res['uri'] = uri
      res['targetUri'] = uri
    end
  end

  lsp.handlers[ctx.method](err, result, ctx, config)
end



return {
  default_config = {
    cmd = { 'deno', 'lsp' },
    cmd_env = { NO_COLOR = true },
    filetypes = {
      'fandibuild',
    },
    get_language_id = function ()
        return "typescript"
    end,
    single_file_support = true,
    settings = {
      deno = {
        enable = true,
        lint = true,
        unstable = true,
        suggest = {
          imports = {
            hosts = {
              ['https://deno.land'] = true,
            },
          },
        },
      },
    },
    handlers = {
      ['textDocument/definition'] = denols_handler,
      ['textDocument/typeDefinition'] = denols_handler,
      ['textDocument/references'] = denols_handler,
      ['workspace/executeCommand'] = function(err, result, context, config)
        if context.params.command == 'deno.cache' then
          buf_cache(context.bufnr, vim.lsp.get_client_by_id(context.client_id))
        else
          lsp.handlers[context.method](err, result, context, config)
        end
      end,
    },
  },
  commands = {
    DenolsCache = {
      function()
        local clients = vim.lsp.get_active_clients()
        for _, client in ipairs(clients) do
          if client.name == 'fandibuild' then
            buf_cache(0, client)
            break
          end
        end
      end,
      description = 'Cache a module and all of its dependencies.',
    },
  },
  docs = {
    description = [[
build.fandiful.ts Language Server (Based on deno)
]],
    default_config = {
    },
  },
}
