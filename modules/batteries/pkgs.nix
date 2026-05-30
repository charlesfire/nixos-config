let
  __functor = _self: getPkgs: {
    nixos = { user, pkgs, ... }: {
      users.users.${user.name}.packages = getPkgs pkgs;
    };
  };
in {
  den.aspects.batteries.pkgs = {
    inherit __functor;
  };
}