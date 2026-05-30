{ den, ... }: {
  den.aspects.graphics = {
    includes = with den.aspects; [
      graphics._
    ];

    gimp = den.aspects.batteries.pkgs (pkgs: [ pkgs.gimp ]);
  };
}