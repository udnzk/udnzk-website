{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    eleventy-src = {
	url = "github:11ty/eleventy/v3.1.6";
	flake = false;
    };
  };

  outputs =
	{
	self,
	nixpkgs,
	flake-utils,
	...
	}@inputs:
	flake-utils.lib.eachDefaultSystem(
	system:
	let
    pkgs = inputs.nixpkgs.legacyPackages.${system};
    eleventy = import ./eleventy.nix {
    	inherit pkgs;
	src = inputs.eleventy-src;
    };
    	in
	{
	  packages.eleventy = eleventy;
	  devShells.default = pkgs.mkShell {
		buildInputs = [
		  eleventy
		];
		shellHook = "";
	  };
	  }
	);

}
