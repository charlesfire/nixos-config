{ den, ... }: {
  den.ctx.user.includes = [ den._.mutual-provider ];
  
  den.default.homeManager.home.stateVersion = "25.11";

  den.default.includes = [ den.batteries.inputs' ];

  # Add support for flakes.
  den.default.nixos.nix.settings.experimental-features = [ "nix-command" "flakes" ];
}