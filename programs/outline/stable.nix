{appimageTool}:

{
  outline-manager = appimageTools.wrapType2 {
    name = "outline";
    src = fetchurl {
      url = "https://raw.githubusercontent.com/Jigsaw-Code/outline-releases/master/manager/stable/Outline-Manager.AppImage";
     sha256 = "1dcl5rqhg2036p3jjbz7ykx5rxgy8yzjnqd6vj0hi3wxmgp7ajh0";
    };

    extraPkgs 
  }
}
