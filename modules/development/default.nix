{ den, ... }: {
  den.aspects.development = {
    includes = with den.aspects; [
      development._
    ];

    kate = den.aspects.batteries.pkgs (pkgs: [ pkgs.kdePackages.kate ]);
    nixd = den.aspects.batteries.pkgs (pkgs: [ pkgs.nixd ]);
    quickemu = den.aspects.batteries.pkgs (pkgs: [ pkgs.quickemu ]);
  };
}