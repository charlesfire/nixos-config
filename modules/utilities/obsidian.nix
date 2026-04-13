{ den, ... }: {
  den.aspects.obsidian = { user, ... }: {
    includes = [
      (den.provides.unfree [ "obsidian" ])
    ];

    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        obsidian
      ];
    };
  };
}