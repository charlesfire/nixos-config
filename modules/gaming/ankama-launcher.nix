{ den, ... }: {
  den.aspects.gaming.games.ankama-launcher = {
    includes = [
      (den.provides.unfree [ "ankama-launcher" ])
      (den.aspects.batteries.pkgs (pkgs: [ pkgs.ankama-launcher ]))
    ];
  };
}