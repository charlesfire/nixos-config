let
  __functor = _self: getPkgs: {
    user = { pkgs, ... }: {
      packages = getPkgs pkgs;
    };
  };
in {
  den.aspects.batteries.pkgs = {
    inherit __functor;
  };
}