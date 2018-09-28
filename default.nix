{ nixpkgs ? import <nixpkgs> {} }:
let
  caskellBare = nixpkgs.pkgs.haskellPackages.callCabal2nix "caskell" ./. {};
in
nixpkgs.haskell.lib.overrideCabal caskellBare ( oldAttrs: {
  librarySystemDepends = with nixpkgs.pkgs; [pcre pcre2];
})
