{ pkgs }:

pkgs.neovim-unwrapped.overrideAttrs (
  old: {
    name    = "neovim-6.0.0";
    version = "v0.6.0";

    src = pkgs.fetchFromGitHub {
      owner  = "neovim";
      repo   = "neovim";
      rev = "5b839ced692230fe582fde41f79f875ee90451e8";
      sha256 = "10p6lg5yv9n6wcwdprwvvi56dfcm4wsj54nm0invyx3mhf7374lx";
    };

    buildInputs = old.buildInputs ++ [ pkgs.tree-sitter ];
  }
)
