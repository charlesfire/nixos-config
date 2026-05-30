{ den, ... }: {
  den.aspects.internet.discord =
  let
    discord = den.aspects.batteries.pkgs (pkgs: [ pkgs.discord ]);
  in {
    includes = [
      (den.provides.unfree [ "discord" ])
      discord
    ];
  };
}