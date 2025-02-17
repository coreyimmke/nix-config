require("catppuccin").setup({
	transparent_background = true, -- disables setting the background color.
	no_italic = true, -- Force no italic
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin-macchiato")
