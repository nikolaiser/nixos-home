{pkgs}:

let
  pure = {
    name = "theme-pure";
    src = pkgs.fetchFromGitHub {
      owner = "pure-fish";
      repo = "pure";
      rev = "c0df5cb4726aa6831c0473556066a4cbf48fc79e";
      sha256 = "1ki7b6b7nrb8fzhcslkvg6a9i5fi2da6bv9fm693yvhfhccf863b";
    };
  };
in
{
  theme = pure;
}
