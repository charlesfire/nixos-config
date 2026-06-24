{
  den.aspects.development.distrobox = {
    nixos.virtualisation.podman = {
      enable = true;
      dockerCompat = true;
    };

    user = { pkgs, ... }: {
      packages = [ pkgs.distrobox pkgs.kontainer ];
    };
  };
}