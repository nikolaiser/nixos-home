{ config, pkgs, ... }:

let
  unstable = import <nixpkgs-unstable> {};
  defaultPackages = with pkgs;[
    unstable.tdesktop  # telegram desctop client
    file
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
    via
    gnome-latex
    texlive.combined.scheme-full
    docker
    openssl
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

  outline-manager = pkgs.appimageTools.wrapType2 {
    name = "outline";
    src = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/Jigsaw-Code/outline-releases/master/manager/stable/Outline-Manager.AppImage";
      sha256 = "1dcl5rqhg2036p3jjbz7ykx5rxgy8yzjnqd6vj0hi3wxmgp7ajh0";
    };

    extraPkgs = pkgs: with pkgs; [ ]; 
  };
in
{

  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;

  home = {
    username      = "nikolaiser";
    homeDirectory = "/home/nikolaiser";
    stateVersion  = "22.05";
    packages      = defaultPackages ++ gnomePackages ++ gnomeExtensions ++ jetbrainsPackages ++ scripts ++ defaultFonts ++ [outline-manager];

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
