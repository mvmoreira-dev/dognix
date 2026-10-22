{ pkgs, ... }:

{
  stylix.targets.qt.enable = true;

  # Qt apps use the Plasma platform theme with the Breeze style
  #qt = {
  #  enable = true;
  #  platformTheme.name = "kde6";
  #  style = {
  #    name = "breeze";
  #    package = pkgs.kdePackages.breeze;
  #  };
  #};

  ## Breeze Dark color scheme, read by Qt apps from kdeglobals
  #xdg.configFile."kdeglobals" = {
  #  source = "${pkgs.kdePackages.breeze}/share/color-schemes/BreezeDark.colors";
  #  force = true;
  #};
}
