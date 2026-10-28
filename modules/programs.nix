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

  # udisk2
  services.udisks2.enable = true;
  
  #gvfs
  services.gvfs.enable = true;
  
  #thunar
  programs.thunar.enable = true;

  # D-Bus power profile
  services.power-profiles-daemon.enable = true;
}
