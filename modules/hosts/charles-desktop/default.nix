{ den, ... }: {
  den.aspects.charles-desktop = {
    includes = with den.aspects; [
      audio
      desktop
      locales
      networking
      printing
    ];

    nixos = { pkgs, ... }: {
      imports = [ ./_nixos/hardware-configuration.nix ];

      # Bootloader.
      boot.loader.systemd-boot.enable = true;
      boot.loader.systemd-boot.memtest86.enable = true;
      boot.loader.efi.canTouchEfiVariables = true;

      boot.supportedFilesystems = [ "bcachefs" ];
      boot.plymouth = {
        enable = true;
        theme = "breeze";
      };

      environment.systemPackages = with pkgs; [
        eza
        parted
        nh
        comma
      ];

      # This value determines the NixOS release from which the default
      # settings for stateful data, like file locations and database versions
      # on your system were taken. It‘s perfectly fine and recommended to leave
      # this value at the release version of the first install of this system.
      # Before changing this value read the documentation for this option
      # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
      system.stateVersion = "24.11";
    };
  };
}