{ den, ... }: {
  den.aspects.llama = with den.aspects; {
    includes = [
      (den.provides.unfree [ "lmstudio" ])
      llama.pi
    ];

    user = { pkgs, inputs', ... }: {
      packages = with pkgs; [
        inputs'.nixpkgs-unstable.legacyPackages.llama-cpp-vulkan
        koboldcpp
        lmstudio
        sillytavern
        inputs'.nixpkgs-unstable.legacyPackages.comfyui
      ];
    };
  };
}