# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, unstable, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.memtest86.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.supportedFilesystems = [ "bcachefs" ];
  boot.plymouth = {
    enable = true;
    theme = "breeze";
  };

  networking.hostName = "nixos"; # Define your hostname.

  # Enables wireless support via iwd.
  networking.wireless.iwd.enable = true;
  networking.firewall = {
    enable = true;
  };

  # Enables networking
  networking.networkmanager.enable = true;
  networking.networkmanager.wifi.backend = "iwd";

  # Enables support for Bluetooth
  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true;

  # Set your time zone.
  time.timeZone = "America/Toronto";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_CA.UTF-8";

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.charles = {
    isNormalUser = true;
    description = "Charles Lachance";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      kdePackages.krdc
      thunderbird
      discord
      qbittorrent
      vlc
      obsidian
      prismlauncher
      qalculate-qt
      gimp
      libreoffice-qt6-fresh
      hunspell
      hunspellDicts.en-ca
      hunspellDicts.fr-any
      airshipper
      openrct2
      archipelago
      unstable.graphite
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  programs.kdeconnect.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  };

  programs.git = {
    enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "Charles Lachance";
        email = "charleslachance@hotmail.com";
      };
      core = {
        editor = "nano";
      };
      color = {
        branch = "auto";
        diff = "auto";
        interactive = "auto";
        status = "auto";
        grep = "auto";
      };
    };
  };

  programs.direnv.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    gparted
    eza
    nixd
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        jnoortheen.nix-ide
        ms-azuretools.vscode-docker
        mkhl.direnv
        redhat.java
        vscjava.vscode-java-debug
        vscjava.vscode-java-test
        vscjava.vscode-java-dependency
        vscjava.vscode-gradle
        vscjava.vscode-maven
        ms-vscode.live-server
      ];
    })
  ];

  virtualisation.docker = {
    enable = true;
    storageDriver = "overlay2";
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  # Add support for flakes.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
