{ pkgs, ... }:

{
  programs.nix-ld = {
    enable = true;

    libraries = with pkgs; [
      # X11
      xorg.libX11
      xorg.libXcursor
      xorg.libXrandr
      xorg.libXinerama
      xorg.libXi
      xorg.libXext
      xorg.libXfixes

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
