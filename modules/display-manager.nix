{ pkgs, ... }:

{
  services.displayManager.gdm.enable = false;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    extraPackages = with pkgs.kdePackages; [
      qtmultimedia
      qtsvg
      qtdeclarative
      qt5compat
    ];
  };

  # Astronaut Theme
  #environment.systemPackages = [
  #  (pkgs.sddm-astronaut.override { embeddedTheme = "astronaut"; })
  #];

  # Qylock Themes
  programs.qylock = {
    enable = true;
    theme = "sword"; # /run/current-system/sw/share/sddm/themes/
  };
}
