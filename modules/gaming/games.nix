{ den, ... }: {
  den.aspects.gaming.games = {
    includes = with den.aspects; [
      gaming.games._
    ];

    airshipper = den.aspects.batteries.pkgs (pkgs: [ pkgs.airshipper ]);
    archipelago = den.aspects.batteries.pkgs (pkgs: [ pkgs.archipelago ]);
    faugus-launcher = den.aspects.batteries.pkgs (pkgs: [ pkgs.faugus-launcher ]);
    kate = den.aspects.batteries.pkgs (pkgs: [ pkgs.kdePackages.kate ]);
    nixd = den.aspects.batteries.pkgs (pkgs: [ pkgs.nixd ]);
    openrct2 = den.aspects.batteries.pkgs (pkgs: [ pkgs.openrct2 ]);
    prismlauncher = den.aspects.batteries.pkgs (pkgs: [ pkgs.prismlauncher ]);
    quickemu = den.aspects.batteries.pkgs (pkgs: [ pkgs.quickemu ]);
  };
}