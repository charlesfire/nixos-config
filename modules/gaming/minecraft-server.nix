{ den, ... }: {
  den.aspects.gaming.games.minecraft-server = {
    includes = [ (den.provides.unfree [ "minecraft-server" ]) ];

    nixos = { inputs', inputs, ... }: {
      /*imports = [ inputs.nix-minecraft.nixosModules.minecraft-servers ];
      nixpkgs.overlays = [ inputs.nix-minecraft.overlay ];*/
      services.minecraft-server = {
        enable = true;
        eula = true;
        openFirewall = true;
        package = inputs'.nix-minecraft.legacyPackages.neoforge-1_21_1;
        /*servers.vanilla = {
          enable = true;
          jvmOpts = "-Xmx4G -Xms2G";

          # Specify the custom minecraft server package
          #package = inputs'.nix-minecraft.legacyPackages.minecraftServers.vanilla-server;
        };*/
      };
    };
  };
}