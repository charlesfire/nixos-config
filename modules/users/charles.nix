{ den, ... }: {
  den.aspects.charles = {
    includes = with den.aspects; [
      den.provides.define-user
      den.provides.primary-user
      development
      gaming
      graphics
      internet
      multimedia
      office
      utilities
    ];

    nixos = {
      users.users.charles.description = "Charles Lachance";
    };
  };
}