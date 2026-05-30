{ den, ... }: {
  den.aspects.gaming.games = {
    includes = with den.aspects; [
      gaming.games._
    ];

    kate = den.aspects.batteries.pkgs (pkgs: [ pkgs.kdePackages.kate ]);
    nixd = den.aspects.batteries.pkgs (pkgs: [ pkgs.nixd ]);
    quickemu = den.aspects.batteries.pkgs (pkgs: [ pkgs.quickemu ]);
    prismlauncher = den.aspects.batteries.pkgs (pkgs: [ pkgs.prismlauncher ]);
    airshipper = den.aspects.batteries.pkgs (pkgs: [ pkgs.airshipper ]);
    openrct2 = den.aspects.batteries.pkgs (pkgs: [ pkgs.openrct2 ]);
    archipelago = den.aspects.batteries.pkgs (pkgs: [ pkgs.archipelago ]);
    faugus-launcher = den.aspects.batteries.pkgs (pkgs: [ pkgs.faugus-launcher ]);
  };
}