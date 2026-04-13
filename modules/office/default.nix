{
  den.aspects.office = { user, ... }: {
    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        libreoffice-qt6-fresh
        hunspell
        hunspellDicts.en-ca
        hunspellDicts.fr-any
      ];
    };
  };
}