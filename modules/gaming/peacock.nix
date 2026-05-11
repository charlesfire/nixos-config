{
  den.aspects.peacock = {
    nixos = { user, pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        peacock
      ];
    };
  };
}