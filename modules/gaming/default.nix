{ den, ... }: {
  den.aspects.gaming = {
    includes = with den.aspects; [
      games
      steam
      peacock
    ];

    nixos = { ... }: {
      programs.gamemode.enable = true;
    };
  };
}