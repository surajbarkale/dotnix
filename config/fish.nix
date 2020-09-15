{ pkgs, ... }: {
  enable = true;
  shellInit = ''
    set -p fish_function_path ${pkgs.fish-foreign-env}/share/fish-foreign-env/functions
    fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  '';
  shellAbbrs = {
    l = "ls";
    lw = "lorri watch --once";
  };
}
