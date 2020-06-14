pkgs: attrs:
  with pkgs;
  let defaultAttrs = rec {
    version = "3.10.3";

    builder = "${bash}/bin/bash";
    args = [ ./builder.sh ];
    baseInputs = [ findutils help2man gnutar gzip gnumake gcc binutils-unwrapped coreutils gawk gnused gnugrep patchelf ];
    buildInputs = [];
    system = builtins.currentSystem;
  };
  in
  derivation (defaultAttrs // attrs)