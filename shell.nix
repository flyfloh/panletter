{ pkgs ? import <nixpkgs> { } }:
with pkgs;

let
  mkLetter = writeShellScriptBin "mkLetter" ''
    pandoc $1 -o $2 --template=letter.tex
  '';

in mkShell {
  buildInputs = [
    pandoc
    texlive.combined.scheme-medium
    mkLetter
  ];
}
