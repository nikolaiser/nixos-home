{config, lib, pkgs, ... }:

let
  custom-plugins = pkgs.callPackage ./custom-plugins.nix {
    inherit (pkgs.vimUtils) buildVimPlugin;
  };
  
  plugins = pkgs.vimPlugins // custom-plugins;


  myVimPlugins = with plugins; [
    vim-nix        # nix support
    vim-fish       # fish shell highlighting
    material-vim   #
    coc-nvim       # LSP client + autocompletion
    vim-easy-align # alignment
  ];
  

  baseConfig    = builtins.readFile ./config.vim;
  pluginsConfig = builtins.readFile ./plugins.vim;
  cocConfig     = builtins.readFile ./coc.vim;
  cocSettings   = builtins.toJSON (import ./coc-settings.nix);
  vimConfig     = baseConfig + pluginsConfig + cocConfig;
in
{
  programs.neovim = {
    enable      = true;
    extraConfig = vimConfig;
    plugins     = myVimPlugins;
    vimAlias    = true;
    withPython3 = true;
    withNodeJs  = true; # for coc.nvim
  };

  xdg.configFile = {
    "nvim/coc-settings.json".text = cocSettings;
  };

}
