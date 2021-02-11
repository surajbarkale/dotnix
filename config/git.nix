{
  enable = true;
  lfs.enable = true;
  userName = "Suraj Barkale";
  userEmail = "suraj@barkale.com";
  aliases = {
    br = "branch";
    sw = "switch";
    ci = "commit";
    co = "checkout";
    lg = "log --graph --decorate --pretty=oneline --abbrev-commit";
  };
  extraConfig = {
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
