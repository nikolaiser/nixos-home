{ config, pkgs, ... }:

let
  defaultPackages = with pkgs;[
    tdesktop
    tree
    xclip
    ntfs3g
    openjdk11
  ];
  gnomePackages = with pkgs.gnome; [
    eog
    evince
    gnome-tweak-tool
    nautilus
  ];

  gnomeExtensions = with pkgs.gnomeExtensions; [
    appindicator
    dash-to-dock
  ];

  jetbrainsPackages = with pkgs.jetbrains; [
    idea-ultimate
  ];

  scripts = pkgs.callPackage ./scripts/default.nix { inherit config pkgs; };
in
{

  programs.home-manager.enable = true;

  home = {
    username = "nikolaiser";
    homeDirectory = "/home/nikolaiser";
    stateVersion = "22.05";
    packages = defaultPackages ++ gnomePackages ++ gnomeExtensions ++ jetbrainsPackages ++ scripts;
  };

  nixpkgs.config = {
    allowUnfree = true;
  };


  imports = (import ./programs) ++ [./dconf.nix];
}
