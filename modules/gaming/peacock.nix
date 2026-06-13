{
  den.aspects.gaming.peacock = {
    user = { inputs', ... }: {
      packages = with inputs'.nixpkgs-unstable.legacyPackages; [
        peacock
      ];
    };
  };
}