{ pkgs }:

pkgs.neovim-unwrapped.overrideAttrs (
  old: {
    name    = "neovim-6.0.0";
    version = "v0.6.0";

    src = pkgs.fetchFromGitHub {
      owner  = "neovim";
      repo   = "neovim";
      rev    = "v0.6.0";
      sha256 = "1iyyj07gz6997h7ndzqgnf0hjid23d48i11a83f8ynms5jh9jymi";
    };

    buildInputs = old.buildInputs ++ [ pkgs.tree-sitter ];
  }
)
