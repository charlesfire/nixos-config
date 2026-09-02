{
  den.aspects.development.zed = {
    user = { inputs', ... }: {
      packages = with inputs'.nixpkgs-unstable.legacyPackages; [
        zed-editor
      ];
    };
  };
}