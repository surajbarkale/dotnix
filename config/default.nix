{ config, pkgs, lib, ... }: {
  nixpkgs.config.allowUnfree = true;
  home.sessionVariables = {
    NIX_PATH = "${config.home.homeDirectory}/.nix-defexpr/channels";
    AWS_VAULT_KEYCHAIN_NAME = "login";
  };
  home.packages = with pkgs;
    [
      # Shell
      lorri
      shellcheck
      awscli2
      aws-vault
      gh

      # nix
      nixfmt
      mach-nix

      # Utilities
      jq
      tig
      wget
      dive
      badge
      curlie
      pandoc
      ripgrep

      # Languages
      go
      deno
      ruby
      nodejs-14_x

      # python
      poetry
      (python39.withPackages
        (ps: with ps; [ flake8 black ipython requests pytest ]))
    ] ++ lib.optionals pkgs.stdenv.isDarwin
    (with pkgs.darwin.apple_sdk.frameworks; [ Cocoa CoreServices ]);

  programs.fish = import ./fish.nix { inherit pkgs; };
  programs.zsh = import ./zsh.nix;
  programs.git = import ./git.nix;
  programs.direnv = import ./direnv.nix;
  programs.neovim = import ./neovim.nix;
  programs.starship = import ./starship.nix;
}
