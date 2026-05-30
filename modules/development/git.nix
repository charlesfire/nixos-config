{
  den.aspects.development.git = {
    nixos.programs.git = {
      enable = true;
      config = {
        init = {
          defaultBranch = "main";
        };
        user = {
          name = "Charles Lachance";
          email = "charleslachance@hotmail.com";
        };
        core = {
          editor = "nano";
        };
        color = {
          branch = "auto";
          diff = "auto";
          interactive = "auto";
          status = "auto";
          grep = "auto";
        };
      };
    };
  };
}