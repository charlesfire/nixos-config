{ den, ... }: {
  den.aspects.vscode = { user, ... }: {
    includes = [
      (den.provides.unfree [ "vscode" "vscode-with-extensions" ])
    ];

    nixos = { pkgs, ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        (vscode-with-extensions.override {
          vscodeExtensions = with vscode-extensions; [
            jnoortheen.nix-ide
            ms-azuretools.vscode-docker
            mkhl.direnv
            redhat.java
            vscjava.vscode-java-debug
            vscjava.vscode-java-test
            vscjava.vscode-java-dependency
            vscjava.vscode-gradle
            vscjava.vscode-maven
            ms-vscode.live-server
            saoudrizwan.claude-dev
          ];
        })
      ];
    };
  };
}