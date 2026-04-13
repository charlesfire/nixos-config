{
  den.aspects.graphics = { user, ... }: {
    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        gimp
        #unstable.graphite
      ];
    };
  };
}