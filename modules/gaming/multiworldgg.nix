{ den, ... }: {
  den.aspects.multiworldgg = {
    includes = with den.aspects; [
      appimage
    ];

    nixos = { user, pkgs, ... }: 
    let
      pname = "multiworldgg";
      version = "0.7.245";

      src = pkgs.fetchurl {
        url = "https://github.com/MultiworldGG/MultiworldGG/releases/download/${version}/MultiworldGG_${version}_linux-x86_64.AppImage";
        hash = "sha256-rUyQdJBRIIIBwKzLu3tlleMuPvTnYMqzVvKYGdkO0pA=";
      };

      multiworldgg = pkgs.appimageTools.wrapType2 { inherit pname version src; };
    in {
      users.users.${user.userName}.packages = [
        multiworldgg
      ];
    };
  };
}