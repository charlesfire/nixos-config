{
  den.aspects.peacock = {
    nixos = { user, inputs', ... }: {
      users.users.${user.userName}.packages = with inputs'.nixpkgs-unstable.legacyPackages; [
        peacock
      ];
    };
  };
}