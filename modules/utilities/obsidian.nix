{ den, ... }: {
  den.aspects.utilities.obsidian =
  let
    obsidian = den.aspects.batteries.pkgs (pkgs: [ pkgs.obsidian ]);
  in {
    includes = [
      (den.provides.unfree [ "obsidian" ])
      obsidian
    ];
  };
}