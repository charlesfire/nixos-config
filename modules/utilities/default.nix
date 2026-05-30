{ den, ... }: {
  den.aspects.utilities = {
    includes = with den.aspects; [
      utilities._
    ];

    gparted = den.aspects.batteries.pkgs (pkgs: [ pkgs.gparted ]);
    qalculate = den.aspects.batteries.pkgs (pkgs: [ pkgs.qalculate-qt ]);
  };
}