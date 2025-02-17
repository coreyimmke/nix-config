require("nvim-treesitter.configs").setup({
  -- installation is handled through nix and home manager
  auto_install = false,

  highlight = { enable = true },
	indent = { enable = true },
})
