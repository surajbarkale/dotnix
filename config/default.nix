{ config, pkgs, lib, ... }: {
  nixpkgs.config = { allowUnfree = true; };
  home.sessionVariables = {
    NIX_PATH = "${config.home.homeDirectory}/.nix-defexpr/channels";
  };
  home.packages = with pkgs;
    [
      # Shell
      lorri
      shellcheck

      # Utilities
      jq
      tig
      dive
      curlie
      nixfmt
      ripgrep

      # Languages
      go
      nodejs-12_x
      python37
      python37Packages.flake8
      python37Packages.black

    ] ++ lib.optionals pkgs.stdenv.isDarwin
    (with pkgs.darwin.apple_sdk.frameworks; [ Cocoa CoreServices ]);

  programs.fish = import ./fish.nix { inherit pkgs; };
  programs.zsh = import ./zsh.nix;
  programs.git = import ./git.nix;
  programs.direnv = import ./direnv.nix;
  programs.neovim = import ./neovim.nix;
  programs.starship = import ./starship.nix;
}
