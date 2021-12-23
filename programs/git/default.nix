{config, pkgs, ... }:

let
  gitConfig = {
    core = {
      editor = "nvim";
    };
    init.defaultBranch = "main";
  };
in
{
  programs.git = {
    enable = true;
    aliases = {
      br = "branch";
      co = "checkout";
      st = "status";
      cm = "commit -m";
      ca = "commit -am";
    };
    extraConfig = gitConfig;
    userEmail   = "nickolayser@gmail.com";
    userName    = "nikolaiser";
  };
}
