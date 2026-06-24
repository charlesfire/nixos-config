{ den, ... }: {
  den.aspects.development.vscode = {
    includes = [
      (den.provides.unfree [
        "vscode"
        "vscode-with-extensions"
        "vscode-extension-ms-vscode-remote-remote-containers"
      ])
    ];

    user = { pkgs, ... }: {
      packages = with pkgs; [
        (vscode-with-extensions.override {
          vscodeExtensions = with vscode-extensions; [
            jnoortheen.nix-ide
            ms-azuretools.vscode-docker
            ms-vscode-remote.remote-containers
            mkhl.direnv
            naumovs.color-highlight
            redhat.java
            vscjava.vscode-java-debug
            vscjava.vscode-java-test
            vscjava.vscode-java-dependency
            vscjava.vscode-gradle
            vscjava.vscode-maven
          ];
        })
      ];
    };
  };
}