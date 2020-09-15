{ pkgs, ... }: {
  enable = true;
  shellAbbrs = {
    l = "ls";
    lw = "lorri watch --once";
  };
}
