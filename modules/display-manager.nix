{ pkgs, ... }:

{
  services.displayManager.gdm.enable = false;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    theme = "sddm-astronaut-theme";
    extraPackages = with pkgs.kdePackages; [
      qtmultimedia
      qtsvg
      qtvirtualkeyboard
    ];
  };

  environment.systemPackages = [
    (pkgs.sddm-astronaut.override { embeddedTheme = "astronaut"; })
  ];
}
