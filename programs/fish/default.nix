{config, pkgs, lib, ... }:

let 
  custom = pkgs.callPackage ./plugins.nix {};
in
{
  programs.fish = {
    enable = true;
    
    plugins = [ custom.theme ];
  };

}
