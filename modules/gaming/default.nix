{ den, ... }: {
  den.aspects.gaming = {
    includes = with den.aspects; [
      games
      steam
    ];

    nixos = { ... }: {
      programs.gamemode.enable = true;
    };
  };
}