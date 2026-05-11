{ den, ... }: {
  den.aspects.gaming = {
    includes = with den.aspects; [
      games
      multiworldgg
      peacock
      steam
    ];

    nixos = { ... }: {
      programs.gamemode.enable = true;
    };
  };
}