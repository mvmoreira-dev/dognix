{ pkgs, ... }:

{
  # SERVICES 

  # Flatpak
  services.flatpak.enable = true;

  # upower
  services.upower.enable = true;

  # Epson printer drivers
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      epson-escpr
      epson-escpr2
      gutenprint
    ];
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };


  # PROGRAMS

  # GPU Screen Recorder
  programs.gpu-screen-recorder = {
    enable = true;
    ui.enable = true;
  };

  # yazi
  programs.yazi = {
    enable = true;

    plugins = with pkgs.yaziPlugins; {
      ouch = ouch;
      git = git;
      full-border = full-border;
      smart-enter = smart-enter;
      piper = piper;
      rich-preview = rich-preview;
      chmod = chmod;
      mount = mount;
    };
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

  # programs.ssh.askPassword
  programs.ssh.enableAskPassword = false;
}
