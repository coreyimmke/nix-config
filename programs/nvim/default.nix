{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;

    plugins = with pkgs.vimPlugins; [
      # color theme
      catppuccin-nvim

      # git signs in gutter as well as git blame
      gitsigns-nvim

      # does a lot of different things, comment, pairs, and statusline are some of the main uses
      mini-nvim

      # icons
      nvim-web-devicons

      # fuzzy finder
      plenary-nvim
      telescope-ui-select-nvim
      telescope-nvim

      # treesitter - syntax highlighting and indentation
      nvim-treesitter.withAllGrammars

      # file explorer
      # neo-tree also needs plenary but its listed above with telescope
      nui-nvim
      neo-tree-nvim

      # completions
      cmp-nvim-lsp
      cmp-buffer
      cmp-path
      nvim-cmp

      # snippets
      luasnip
      cmp_luasnip

      #LSP
      nvim-lspconfig

      # Auto-formatting
      conform-nvim
    ];

    extraPackages = with pkgs; [
      tree-sitter
      gcc

      ripgrep
      fd

      # Lua language server
      lua-language-server
      
      # Lua styling
      stylua

      # Python language server
      pyright

      # HTML/CSS/JSON/ESLint language servers
      vscode-langservers-extracted

      # Typescript language server
      typescript-language-server
      
      # Prettier
      prettierd

      # Elixir language server
      elixir_ls

      # Bash language server
      bash-language-server
    ];
  };

  xdg.configFile.nvim = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-config/programs/nvim/config";
    recursive = true;
  };
  
}
