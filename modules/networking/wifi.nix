{
  den.aspects.wifi = {
    nixos = { ... }: {
      # Enables wireless support via iwd.
      networking.wireless.iwd.enable = true;

      # Enables networking
      networking.networkmanager.enable = true;
      networking.networkmanager.wifi.backend = "iwd";
    };
  };
}