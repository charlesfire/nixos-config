{ den, ... }: {
  den.aspects.internet = { user, ... }: {
    includes = with den.aspects; [
      discord
    ];

    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        kdePackages.krdc
        thunderbird
        qbittorrent
        discord
      ];

      programs.firefox.enable = true;
      programs.kdeconnect.enable = true;
    };
  };
}