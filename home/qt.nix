{ pkgs, ... }:

{
  stylix.targets.qt.enable = true;
  home.sessionVariables.QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

  # Qt apps use the Plasma platform theme with the Breeze style
  #qt = {
  #  enable = true;
  #  platformTheme.name = "kde";
  #  style = {
  #    name = "breeze";
  #  };
  #};

  ## Breeze Dark color scheme, read by Qt apps from kdeglobals
  #xdg.configFile."kdeglobals" = {
  #  source = "${pkgs.kdePackages.breeze}/share/color-schemes/BreezeDark.colors";
  #  force = true;
  #};
}
