return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- ensures Treesitter parsers are installed
    main = "nvim-treesitter.configs",
   config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "javascript", "html", "typescript", "tsx", "css", "json", "yaml" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
            autopairs = {
                enable = true
            }
        })
    end    
}