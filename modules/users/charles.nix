{ den, ... }: {
  den.aspects.charles = {
    includes = [
      den.provides.define-user
      den.provides.primary-user
    ];
  };
}