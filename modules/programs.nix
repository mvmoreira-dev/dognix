{ ... }:

{
  # Flatpak
  services.flatpak.enable = true;

  # upower
  services.upower.enable = true;

  # GPU Screen Recorder
  programs.gpu-screen-recorder = {
    enable = true;
    ui.enable = true;
  };

  # OBS Studio
  programs.obs-studio.enable = true;

  # Steam
  programs.steam.enable = true;

  # Gamemode
  programs.gamemode.enable = true;
}
