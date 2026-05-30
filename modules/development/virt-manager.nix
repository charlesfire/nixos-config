{
  den.aspects.development.virt-manager = {
    nixos = { user, ... }: {
      virtualisation.libvirtd = {
        enable = true;
        qemu.swtpm.enable = true;
      };
      programs.virt-manager.enable = true;
      users.users.${user.userName}.extraGroups = [ "libvirtd" ];
    };
  };
}