self: super: {
  awscli2 = super.awscli2.overrideAttrs (old: { doInstallCheck = false; });
}
