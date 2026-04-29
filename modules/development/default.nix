{ den, ... }: {
  den.aspects.development = { user, ... }: {
    includes = with den.aspects; [
      direnv
      docker
      git
      vscode
    ];

    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        kdePackages.kate
        nixd
        quickemu
      ];
    };
  };
}