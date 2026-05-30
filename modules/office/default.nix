{ den, ... }: {
  den.aspects.office = {
    includes = with den.aspects; [
      office._
    ];

    libreoffice = den.aspects.batteries.pkgs (pkgs: [ pkgs.libreoffice-qt6-fresh ]);
    hunspell = den.aspects.batteries.pkgs (pkgs: [
      pkgs.hunspell
      pkgs.hunspellDicts.en-ca
      pkgs.hunspellDicts.fr-any
    ]);
  };
}