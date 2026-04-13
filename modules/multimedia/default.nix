{
  den.aspects.multimedia = { user, ... }: {
    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        vlc
      ];
    };
  };
}