{ den, inputs, ... }: {
  den.aspects.llama.pi = {
    includes = [ (den.provides.unfree [ "google-chrome" ]) ];

    user = { pkgs, inputs', ... }: 
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
        nodejs
        python3
        google-chrome
        inputs'.llm-agents.packages.pi
      ];
      jailed-pi = jail "pi" inputs'.llm-agents.packages.pi (with jail.combinators; [
        network
        mount-cwd
        no-new-session
        gui # Without this, Pi won't be able to use agent-browser.
        open-urls-in-browser
        (add-pkg-deps pi-packages)
        (readwrite (noescape "~/.pi"))
        (try-fwd-env "COLORTERM") # Without this, Pi won't be able to use the proper colors.
      ]);
    in {
      packages = [
        jailed-pi
      ];
    };
  };
}