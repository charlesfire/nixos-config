{ den, ... }: {
  den.aspects.internet = {
    includes = with den.aspects; [
      internet._
    ];

    element-desktop = den.aspects.batteries.pkgs (pkgs: [ pkgs.element-desktop ]);
    krdc = den.aspects.batteries.pkgs (pkgs: [ pkgs.kdePackages.krdc ]);
    qbittorrent = den.aspects.batteries.pkgs (pkgs: [ pkgs.qbittorrent ]);
    thunderbird = den.aspects.batteries.pkgs (pkgs: [ pkgs.thunderbird ]);
  };
}