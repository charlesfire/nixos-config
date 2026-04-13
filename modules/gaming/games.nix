{
  den.aspects.games = { user, ... }: {
    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        prismlauncher
        airshipper
        openrct2
        archipelago
      ];
    };
  };
}