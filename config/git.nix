{
  enable = true;
  lfs.enable = true;
  aliases = {
    br = "branch";
    sw = "switch";
    ci = "commit";
    co = "checkout";
    lg = "log --graph --decorate --pretty=oneline --abbrev-commit";
  };
  extraConfig = {
    init.defaultBranch = "main";
    color.ui = "auto";
    push.default = "simple";
    pull.rebase = true;
    fetch = {
      prune = true;
      pruneTags = true;
    };
    rebase = {
      autostash = true;
      autoSquash = true;
    };
    mergeTool.keepBackup = false;
  };
  ignores = [ "*~" ".DS_Store" ".envrc" "shell.nix" ".bundle/" ];
}
