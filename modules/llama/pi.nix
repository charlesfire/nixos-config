{
  den.aspects.llama.pi = {
    nixos = { user, inputs', ... }: {
      users.users.${user.userName}.packages = with inputs'.llm-agents.packages; [
        pi
      ];
    };
  };
}