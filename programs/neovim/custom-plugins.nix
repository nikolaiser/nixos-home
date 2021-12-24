{buildVimPlugin, buildVimPluginFrom2Nix, fetchFromGitHub}:

{
  material-vim = buildVimPlugin {
    name = "material-vim";
    src = builtins.fetchTarball {
      name   = "material-vim-2020-10-21";
      url    = "https://github.com/kaicataldo/material.vim/archive/7a725ae.tar.gz";
      sha256 = "0nd3qvwpcbvawc6zaczzzyq0mxgfn7bfv36yw05f03rqipgfw6fn";
    };
  };

  nvim-metals = buildVimPluginFrom2Nix {
    name = "nvim-metals";
    src  = fetchFromGitHub {
      owner  = "scalameta";
      repo   = "nvim-metals";
      rev    = "2de6be8c334989e160540ab5fe35d4d34741ffed";
      sha256 = "1vj2yxbavx30rqlx61vmz8dlr13as5jfv48098rlnch2wg1lh22b";
    };
  };

  coq-nvim = buildVimPlugin {
    name = "coq-nvim";
    src = fetchFromGitHub {
      owner = "ms-jqp";
      repo = "coq_nvim";
      rev = "e9f2e194466f0bad8883a55b92d2637f20633285";
      sha256 = "06p233qsr8c1rxc359xv7gax8lxb7mrvqz808854xm3dr41wwxjf";
    };
  };

}
