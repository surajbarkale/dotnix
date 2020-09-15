{
  enable = true;
  enableFishIntegration = true;
  settings = {
    directory = {
      truncate_to_repo = false;
      fish_style_pwd_dir_length = 1;
    };
    nix_shell = {
      impure_msg = "nix-shell";
      pure_msg = "pure-nix-shell";
    };
  };
}
