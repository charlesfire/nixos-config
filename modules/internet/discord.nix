{ den, ... }: {
  den.aspects.discord = { user, ... }: {
    includes = [
      (den.provides.unfree [ "discord" ])
    ];

    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        discord
      ];
    };
  };
}