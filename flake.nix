{
  description = "ebproofx – proof trees for LaTeX";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.systems.url = "github:nix-systems/default";
  inputs.flake-utils = {
    url = "github:numtide/flake-utils";
    inputs.systems.follows = "systems";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        texlive = pkgs.texliveMedium.withPackages (
          ps: with ps; [
            l3build
            # doc class & runtime deps
            alphalph
            csquotes
            enumitem
            hypdoc
            libertine
            newtx
            ninecolors
            inconsolata
            relsize
            tabularray
            upquote
          ]
        );
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            texlive
          ];
        };
      }
    );
}
