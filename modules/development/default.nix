{ den, ... }: {
  den.aspects.development = {
    includes = with den.aspects; [
      development._
    ];

    bruno = den.aspects.batteries.pkgs (pkgs: [ pkgs.bruno ]);
    kate = den.aspects.batteries.pkgs (pkgs: [ pkgs.kdePackages.kate ]);
    nixd = den.aspects.batteries.pkgs (pkgs: [ pkgs.nixd ]);
  };
}