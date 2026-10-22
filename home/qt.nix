{ pkgs, ... }:

{
  stylix.targets.qt.enable = false;

  # Qt apps use the Plasma platform theme with the Breeze style
  qt = {
    enable = true;
    platformTheme.name = "kde6";
    style = {
      name = "breeze";
      package = pkgs.kdePackages.breeze;
    };
  };
}
