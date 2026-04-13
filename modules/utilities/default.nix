{ den, ... }: {
  den.aspects.utilities = { user, ... }: {
    includes = with den.aspects; [
      obsidian
    ];

    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        qalculate-qt
        gparted
      ];
    };
  };
}