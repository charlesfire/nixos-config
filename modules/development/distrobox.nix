{ den, ... }: {
  den.aspects.development.distrobox = {
    /*includes = with den.aspects; [
      development.docker
    ];*/

    nixos = { pkgs, ... }: {
      virtualisation.podman = {
        enable = true;
        dockerCompat = true;
        defaultNetwork.settings.dns_enabled = true;
      };
      environment.systemPackages = with pkgs; [
        docker-compose
      ];
    };

    user = { pkgs, ... }: {
      packages = [ pkgs.distrobox pkgs.kontainer ];
    };
  };
}