{ den, ... }: {
  den.aspects.networking.wifi = {
    includes = with den.aspects; [
      networking.firewall # Make sure that the firewall is enabled if wifi is enabled
    ];

    nixos = {
      # Enables wireless support via iwd.
      networking.wireless.iwd.enable = true;

      # Enables networking
      networking.networkmanager.enable = true;
      networking.networkmanager.wifi.backend = "iwd";
    };
  };
}