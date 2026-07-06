{ den, ... }: {
  den.aspects.development.distrobox = {
    includes = with den.aspects; [
      development.docker
    ];

    user = { pkgs, ... }: {
      packages = [ pkgs.distrobox pkgs.kontainer ];
    };
  };
}