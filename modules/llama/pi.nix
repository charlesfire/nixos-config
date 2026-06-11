{ inputs, ... }: {
  den.aspects.llama.pi = {
    nixos = { user, pkgs, inputs', ... }: 
    let
      jail = inputs.jail-nix.lib.init pkgs;
      pi-packages = with pkgs; [
        bashInteractive
        curl
        wget
        jq
        git
        which
        ripgrep
        gnugrep
        gawkInteractive
        ps
        findutils
        gzip
        unzip
        gnutar
        diffutils
        gnused
        agent-browser
      ];
      jailed-pi = jail "pi" inputs'.llm-agents.packages.pi (with jail.combinators; [
        network
        mount-cwd
        no-new-session
        (add-pkg-deps pi-packages)
        (readwrite (noescape "~/.pi"))
      ]);
    in {
      users.users.${user.userName}.packages = [
        jailed-pi
      ];
    };
  };
}