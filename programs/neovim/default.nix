{config, lib, pkgs, ... }:

let
  custom-plugins = pkgs.callPackage ./custom-plugins.nix {
    inherit (pkgs.vimUtils) buildVimPluginFrom2Nix;
    inherit (pkgs) fetchFromGitHub;
    inherit (pkgs.vimUtils) buildVimPlugin;
  };
  
  plugins = pkgs.vimPlugins // custom-plugins;


  myVimPlugins = with plugins; [
    vim-nix             # nix support
    vim-fish            # fish shell highlighting
    material-vim        #
    coc-nvim            # LSP client + autocompletion
    vim-easy-align      # alignment
    vim-scala           # scala plugin
    nerdtree            # tree explorer
    nerdtree-git-plugin # show files git status on the NerdTree
    nvim-metals         # metals support for neovim
    plenary-nvim
    nvim-cmp
    vim-vsnip
    cmp-vsnip
    cmp-nvim-lsp
  ];
  

  baseConfig    = builtins.readFile ./config.vim;
  pluginsConfig = builtins.readFile ./plugins.vim;
  cocConfig     = builtins.readFile ./coc.vim;
  cocSettings   = builtins.toJSON (import ./coc-settings.nix);
  metalsConfig  = builtins.readFile ./metals.vim;
  vimConfig     = baseConfig + pluginsConfig + cocConfig + metalsConfig;
  neovim-6      = pkgs.callPackage ./nightly.nix {};

in
{
  programs.neovim = {
    enable      = true;
    extraConfig = vimConfig;
    plugins     = myVimPlugins;
    package     = neovim-6;
    vimAlias    = true;
    withPython3 = true;
    withNodeJs  = true; # for coc.nvim
  };

  xdg.configFile = {
    "nvim/coc-settings.json".text = cocSettings;
  };

}
