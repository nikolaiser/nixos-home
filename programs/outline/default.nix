{config, lib, pkgs, ... }:

let
  
  
  plugins = pkgs.vimPlugins // custom-plugins;

  outline-manager = appimageTools.wrapType2 {
    name = "outline";
    src = fetchurl {
      url = "https://raw.githubusercontent.com/Jigsaw-Code/outline-releases/master/manager/stable/Outline-Manager.AppImage";
      sha256 = "1dcl5rqhg2036p3jjbz7ykx5rxgy8yzjnqd6vj0hi3wxmgp7ajh0";
    };

    extraPkgs = pkgs: with pkgs; [ ]; 
  };

 

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
