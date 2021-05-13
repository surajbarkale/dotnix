{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "badge";
  exes = [ "badge" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "badge";

  meta = with lib; {
    description = "Add a badge to your tvOS/iOS/Android app icon";
    homepage = "https://github.com/HazAT/badge";
    license = licenses.mit;
  };
}
