{ pkgs, src, ... }:
pkgs.buildNpmPackage {
	pname = "eleventy";
	version = "3.1.6";
	src = src;
	npmDepsHash =  "sha256-M1evv43/z/MQU7/C+2zZL5Pl4B67t1EXYzE77VaEN5I=";
	dontNpmBuild = true;
	dontNpmPrune = true;

}
