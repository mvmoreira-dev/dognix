{ pkgs, ... }:

{
  programs.nix-ld = {
    enable = true;

    libraries = with pkgs; [
      # X11
      libX11
      libXcursor
      libXrandr
      libXinerama
      libXi
      libXext
      libXfixes

      # XCB / Input
      libxcb
      libxkbcommon

      # Graphics
      libGL
      libGLU

      # Audio
      libpulseaudio
      alsa-lib
    ];
  };
}
