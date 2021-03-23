{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    shellHook = ''
      export NIX_GHC_LIBDIR="$(ghc --print-libdir)"
    '';
    name = "semantic-scholar-cli-env";
    buildInputs = with pkgs; [ 
      bazel
      haskellPackages.hpack 
      cabal2nix 
      haskellPackages.ghcide 
      cabal-install 
      stack 
      haskellPackages.hlint
      haskellPackages.brittany
    ];
  }
