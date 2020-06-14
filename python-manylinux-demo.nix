let
  pkgs = import <nixpkgs> {};
  mkDerivation = import ./autotools.nix pkgs;
  version = "3.10.3";
in mkDerivation {
  name = "atlas";
    src = pkgs.fetchurl {
      url = "https://sourceforge.net/projects/math-atlas/files/Stable/${version}/atlas${version}.tar.bz2/download";
      sha256 = "c510e3ad0200517e3a14534e494b37dc0770efd733fc35ce2f445dd49c96a7d5";
    };
}