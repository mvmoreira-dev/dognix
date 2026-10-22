{ lib, ... }:

{
  # X11 / Wayland
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  # KDE Plasma
  #services.displayManager.defaultSession = lib.mkForce "plasma";
  #services.displayManager.sddm.enable = true;
  #services.desktopManager.plasma6.enable = true;

  # Niri
  programs.niri.enable = true;

  # dconf
  programs.dconf.enable = true;

  # Printing
  services.printing.enable = true;
}
