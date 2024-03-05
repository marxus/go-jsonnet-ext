# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, lib
, fetchurl
, installShellFiles
, stdenvNoCC
}:
let
  shaMap = {
    x86_64-linux = "1j3v7x0psi36vh7y7raqf7mvdndimvhgq03kmbxpq8s7rwdbz566";
    aarch64-linux = "1flmjqxpdi5kr5w38x9bahd8y0gq5dld56vzj8qngkyvz9609bx2";
    x86_64-darwin = "0w2p52jcdhz2g6lg46swmn34a4i4xxnhj9m9ifg5ry0ckj3347gx";
    aarch64-darwin = "0q3mvj098zr2y7p5bikpyg23i1snfrkdmw3smchg1pyb9qbxwd6k";
  };

  urlMap = {
    x86_64-linux = "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-linux-amd64.tar.gz";
    aarch64-linux = "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-linux-arm64.tar.gz";
    x86_64-darwin = "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-darwin-amd64.tar.gz";
    aarch64-darwin = "https://github.com/marxus/go-jsonnet-ext/releases/download/v0.20.0/go-jsonnet-darwin-arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "go-jsonnet-ext";
  version = "0.20.0";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr * $out/bin
  '';

  system = system;

  meta = {

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
