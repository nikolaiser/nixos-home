{config, pkgs, lib, ... }:

let 
  custom = pkgs.callPackage ./plugins.nix {};
in
{
  programs.fish = {
    enable  = true;
    plugins = [ custom.theme ];
    shellAliases = {
      ga = "git add";
      gc = "git commit";
      gp = "git push";
    };
  };

}
