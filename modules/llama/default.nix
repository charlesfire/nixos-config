{ den, ... }: {
  den.aspects.llama = with den.aspects; {
    includes = [
      (den.provides.unfree [ "lmstudio" ])
      llama.pi
    ];

    nixos = { user, pkgs, inputs', ... }:
    let
      pi = pkgs.buildNpmPackage (finalAttrs: {
        pname = "pi";
        version = "0.79.0";

        src = pkgs.fetchFromGitHub {
          owner = "earendil-works";
          repo = "pi";
          tag = "v${finalAttrs.version}";
          hash = "";
        };

        npmDepsHash = "";

        meta = {
          description = "Pi is a minimal agent harness.";
          homepage = "https://pi.dev";
          license = pkgs.lib.licenses.mit;
        };
      });
    in {
      users.users.${user.userName}.packages = with pkgs; [
        inputs'.nixpkgs-unstable.legacyPackages.llama-cpp-vulkan
        lmstudio
      ];
    };
  };
}