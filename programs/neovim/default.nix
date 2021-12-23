{config, lib, pkgs, ... }:

let
  custom-plugins = pkgs.callPackage ./custom-plugins.nix {
    inherit (pkgs.vimUtils) buildVimPlugin;
  };
  
  plugins = pkgs.vimPlugins // custom-plugins;


  myVimPlugins = with plugins; [
    vim-nix
    vim-fish
    material-vim
  ];
  

  baseConfig = builtins.readFile ./config.vim;
  pluginsConfig = builtins.readFile ./plugins.vim;

  vimConfig = baseConfig + pluginsConfig;
in
{
  programs.neovim = {
    enable = true;
    extraConfig = vimConfig;
    plugins = myVimPlugins;
    vimAlias = true;
    withPython3 = true;
  };

}
