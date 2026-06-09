{
  den.aspects.desktop.nixos = {
    services.displayManager.plasma-login-manager.enable = true;
    services.desktopManager.plasma6.enable = true;

    environment.variables = {
      KWIN_DRM_DEVICES = "/dev/dri/card1:/dev/dri/card0";
    };
  };
}