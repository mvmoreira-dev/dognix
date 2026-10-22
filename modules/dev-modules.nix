{ pkgs, ... }:

{
  # Lets prebuilt binaries (precompiled gems, downloaded toolchains) run on NixOS
  programs.nix-ld.enable = true;

  # Install headers and pkg-config files together with the libraries below
  environment.extraOutputsToInstall = [ "dev" ];

  # System-wide C libraries, usable from any project with pkg-config
  environment.systemPackages = with pkgs; [
    SDL2
    SDL2_image
    SDL2_ttf
    SDL2_mixer
    raylib
    openssl
    zlib
    libyaml
  ];

  # Let gcc find headers and libraries from the system profile without extra flags
  environment.variables = {
    CPATH = "/run/current-system/sw/include";
    LIBRARY_PATH = "/run/current-system/sw/lib";
  };
}
