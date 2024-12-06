{...}:
let
  pkgs = import(fetchTarball https://releases.nixos.org/nixos/22.11/nixos-22.11.4773.ea4c80b39be4/nixexprs.tar.xz) {};

  all = pkgs.callPackage ./gcc/all.nix { noSysDirs = true; };
in
  all.gcc14



