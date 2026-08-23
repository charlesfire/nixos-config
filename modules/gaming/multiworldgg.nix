{ den, ... }: {
  den.aspects.gaming.multiworldgg = {
    includes = with den.aspects; [
      appimage
    ];

    user = { pkgs, ... }: 
    let
      pname = "multiworldgg";
      version = "0.7.266";

      src = pkgs.fetchurl {
        url = "https://github.com/MultiworldGG/MultiworldGG/releases/download/${version}/MultiworldGG_${version}_linux-x86_64.AppImage";
        hash = "sha256-Jw+iAZMB+NScQ7Sm8iBjQospVq7bVHEgVnwuzGpLCHw=";
      };

      multiworldgg = pkgs.appimageTools.wrapType2 { inherit pname version src; };
    in {
      packages = [
        multiworldgg
      ];
    };
  };
}