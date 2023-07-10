{ pkgs ? import <nixpkgs> {} }:

pkgs.buildNpmPackage rec {
  pname = "openapi-typescript";
  version = "6.3.2";

  src = pkgs.fetchFromGitHub {
    owner = "drwpow";
    repo = pname;
    rev = "openapi-typescript@${version}";
    hash = "sha256-WDylJilPMzF37ZSt0MvBNJkQXYNbQ16TyqgZJ24Y2pc=";
  };

  meta = {
    description = "openapi-typescript generates TypeScript types from static OpenAPI schemas quickly using only Node.js. It is fast, lightweight, (almost) dependency-free, and no Java/node-gyp/running OpenAPI servers necessary.";
    homepage = "https://openapi-ts.pages.dev/";
    license = pkgs.lib.licenses.mit;
  };
}
