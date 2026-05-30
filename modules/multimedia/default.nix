{ den, ... }: {
  den.aspects.multimedia = {
    includes = with den.aspects; [
      multimedia._
    ];

    vlc = den.aspects.batteries.pkgs (pkgs: [ pkgs.vlc ]);
  };
}