{ den, ... }: {
  den.aspects.virt-manager = { user, ... }: {
    nixos = { pkgs, ... }: {
      virtualisation.libvirtd = {
        enable = true;
        qemu.swtpm.enable = true;
      };
      programs.virt-manager.enable = true;
      users.users.${user.userName}.extraGroups = [ "libvirtd" ];
    };
  };
}