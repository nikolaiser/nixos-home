{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      fonts = {
        normal = {
          family = "FiraCode Nerd Font Mono";
        };
      };
      selection.save_to_clipboard = true;
      shell.program = "${pkgs.fish}/bin/fish";
      window = {
        decorations = "full";
        padding = {
          x = 5;
          y = 5;
        };
      };
    };
  };
}
