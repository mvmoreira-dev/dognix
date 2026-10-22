{ pkgs, ... }:

{
  # Stylix
  stylix.enable = true;
  stylix.polarity = "dark";
  stylix.image = ../wallpaper.jpg;

  stylix.targets.grub.enable = false;
  stylix.targets.console.enable = false;

  # Stylix theme
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa-dragon.yaml";

  # cursor
  stylix.cursor = {
    package = pkgs.kdePackages.breeze;
    name = "Breeze_Light";
    size = 24;
  };

  # fonts
  stylix.fonts.monospace.package = pkgs.nerd-fonts.fira-code;
  stylix.fonts.monospace.name = "FiraCode Nerd Font";
  stylix.fonts.sizes.terminal = 12;

  # Console colors
  console.colors = [
    "2E3436"
    "CC0000"
    "4E9A06"
    "C4A000"
    "3465A4"
    "75507B"
    "06989A"
    "D3D7CF"
    "555753"
    "EF2929"
    "8AE234"
    "FCE94F"
    "729FCF"
    "AD7FA8"
    "34E2E2"
    "EEEEEC"
  ];
}
