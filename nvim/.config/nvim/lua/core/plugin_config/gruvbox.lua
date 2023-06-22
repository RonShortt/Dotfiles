vim.o.termguicolors = true
vim.o.background = "dark"
require("gruvbox").setup({
    contrast = "hard",
    palette_overrides = {
        dark0_hard = "#000000",
    }
})
vim.cmd [[ colorscheme gruvbox ]]
