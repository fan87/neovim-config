require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            ".git"
        }
    },
    pickers = {
        live_grep = {
            theme = "dropdown"
        },
        find_files = {
            theme = "dropdown",
            hidden = true
        } 
    }    
})
