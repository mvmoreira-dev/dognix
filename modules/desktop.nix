{ lib, pkgs, ... }:

{
  # X11 / Wayland
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  services.xserver.displayManager.setupCommands = ''
    echo "Xcursor.theme: Breeze_Light" | ${pkgs.xorg.xrdb}/bin/xrdb -merge
    echo "Xcursor.size: 24" | ${pkgs.xorg.xrdb}/bin/xrdb -merge
  '';

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
