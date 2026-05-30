{ den, ... }: {
  den.aspects.gaming.steam = {
    includes = [
      (den.provides.unfree [ "steam" "steam-unwrapped" ])
    ];

    nixos.programs.steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    };
  };
}