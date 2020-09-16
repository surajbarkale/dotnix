{ pkgs, ... }: {
  enable = true;
  shellInit = ''
    set -p fish_function_path ${pkgs.fish-foreign-env}/share/fish-foreign-env/functions
    fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
    # Reload session vars after nix initialization
    set -e __HM_SESS_VARS_SOURCED
    fenv source /Users/suraj/.nix-profile/etc/profile.d/hm-session-vars.sh > /dev/null
    set -e fish_function_path[1]
  '';
  shellAbbrs = {
    l = "ls";
    lw = "lorri watch --once";
  };
}
