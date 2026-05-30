{
  den.aspects.development.docker = {
    nixos.virtualisation.docker = {
      enable = true;
      storageDriver = "btrfs";
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
  };
}