{ den, ... }: {
  den.aspects.networking = {
    includes = with den.aspects; [
      networking._
    ];
  };
}