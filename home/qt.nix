{ pkgs, ... }:

{
  stylix.targets.qt.enable = false;

  # Qt apps use the Plasma platform theme with the Breeze style
  qt = {
    enable = true;
    platformTheme.name = "kde";
    style = {
      name = "breeze";
    };
  };

  ## Breeze Dark color scheme, read by Qt apps from kdeglobals
  #xdg.configFile."kdeglobals" = {
  #  source = "${pkgs.kdePackages.breeze}/share/color-schemes/BreezeDark.colors";
  #  force = true;
  #};
}
