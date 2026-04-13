{ den, ... }: {
  den.aspects.networking = {
    includes = with den.aspects; [
      wifi
      bluetooth
    ];

    nixos = { ... }: {
      networking.firewall = {
        enable = true;
      };
    };
  };
}