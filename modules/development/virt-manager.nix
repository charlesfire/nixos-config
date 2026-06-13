{
  den.aspects.development.virt-manager = {
    nixos = {
      virtualisation.libvirtd = {
        enable = true;
        qemu.swtpm.enable = true;
      };
      programs.virt-manager.enable = true;
    };

    user = {
      extraGroups = [ "libvirtd" ];
    };
  };
}