{ pkgs, ... }:

{
  services.displayManager.gdm.enable = false;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = false;
    package = pkgs.kdePackages.sddm;

    settings = {
      Theme = {
        CursorTheme = "Breeze_Light";
        CursorSize = 24;
      };
      General.GreeterEnvironment = "XCURSOR_THEME=Breeze_Light,XCURSOR_SIZE=24,XCURSOR_PATH=${pkgs.kdePackages.breeze}/share/icons";
    };

    extraPackages = with pkgs.kdePackages; [
      qtmultimedia
      qtsvg
      qtdeclarative
      qt5compat
      breeze
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
