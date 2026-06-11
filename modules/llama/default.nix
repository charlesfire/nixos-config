{ den, ... }: {
  den.aspects.llama = with den.aspects; {
    includes = [
      (den.provides.unfree [ "lmstudio" ])
      llama.pi
    ];

    nixos = { user, pkgs, inputs', ... }: {
      users.users.${user.userName}.packages = with pkgs; [
        inputs'.nixpkgs-unstable.legacyPackages.llama-cpp-vulkan
        lmstudio
      ];
    };
  };
}