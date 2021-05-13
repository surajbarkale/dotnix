self: super: {
  codew = super.callPackage ./pkgs/codew { };
  badge = super.callPackage ./pkgs/badge { };
  mach-nix = (import (builtins.fetchGit {
    url = "https://github.com/DavHau/mach-nix.git";
    ref = "refs/tags/2.4.1";
  })).mach-nix;
}
