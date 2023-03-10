{ pkgs, ... }:
let
  shellAliases = {
    e = "nvim";
    ee = "nvim \"$(fzf)\"";
    g = "${pkgs.git}/bin/git";
    lg = "lazygit";
    ls = "${pkgs.exa}/bin/exa";
    l = "ls";
    ll = "ls -l";
    lt = "ls --tree";
    # Project tmux. 
    pux = "sh -c \"tmux -S $(pwd).tmux attach\"";

    # TODO: Gotta specify ~/.todo/config in Nix
    t = "${pkgs.todo-txt-cli}/bin/todo.sh";
  };
in
{
  programs.bash = { inherit shellAliases; };
  programs.zsh = { inherit shellAliases; };
}
