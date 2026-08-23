{
  den.aspects.gaming.games.faugus-launcher = {
    user = { inputs', ... }: {
      packages = with inputs'.nixpkgs-unstable.legacyPackages; [
        faugus-launcher
      ];
    };
  };
}