{
  den.aspects.desktop = {
    nixos = { ... }: {
      services.displayManager.sddm.enable = true;
      services.desktopManager.plasma6.enable = true;
    };
  };
}