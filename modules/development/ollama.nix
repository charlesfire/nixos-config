{ den, ... }: {
  den.aspects.development.ollama = {
    includes = [
      (den.provides.unfree [ "open-webui" ])
    ];

    nixos = { pkgs, ... }: {
      services.ollama = {
        enable = true;
        loadModels = [ "qwen3-coder:30b" "qwen2.5-coder:14b" ];
        package = pkgs.ollama-rocm;
      };
      services.open-webui.enable = true;
    };
  };
}