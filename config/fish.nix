{ pkgs, ... }: {
  enable = true;
  shellAbbrs = {
    l = "ls";
    lw = "lorri watch --once";
  };
  shellInit = ''
    set -p fish_function_path ${pkgs.fish-foreign-env}/share/fish-foreign-env/functions
    if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]
        fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
    end
    set -p NIX_PATH $HOME/.nix-defexpr/channels
  '';
}
