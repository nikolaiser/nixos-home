{ config, pkgs, ... }:

let
  defaultPackages = with pkgs;[
    tdesktop  # telegram desctop client
    tree      # pretty print files in tree
    xclip     # work with clipboard from command-line
    ntfs3g    # ntfs support
    openjdk11 # jdk
    nix-doc   # search nix documentation
    vlc       # media player
    rnix-lsp  # nix LSP server
    sbt       # scala build tool
    coursier
    nix-prefetch-github
    neofetch
    ranger
    fzf
    bottom
  ];
  gnomePackages = with pkgs.gnome; [
    eog              # image viewer
    evince           # pdf viewer
    gnome-tweak-tool # gnome tweaks
    nautilus         # file explorer
  ];

  gnomeExtensions = with pkgs.gnomeExtensions; [
    appindicator
    dash-to-dock
  ];

  jetbrainsPackages = with pkgs.jetbrains; [
    idea-ultimate
  ];

  scripts = pkgs.callPackage ./scripts/default.nix { inherit config pkgs; };
  
  defaultFonts = with pkgs; [
    nerdfonts
    noto-fonts-emoji
    fira-code
    fira-code-symbols
  ];
in
{

  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;

  home = {
    username      = "nikolaiser";
    homeDirectory = "/home/nikolaiser";
    stateVersion  = "22.05";
    packages      = defaultPackages ++ gnomePackages ++ gnomeExtensions ++ jetbrainsPackages ++ scripts ++ defaultFonts;

    sessionVariables = {
      EDITOR = "nvim";
      SHELL = "fish";
    };
  };

  programs = {
    htop = {
      enable = true;
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
  };



  imports = (import ./programs) ++ [./dconf.nix];
}
