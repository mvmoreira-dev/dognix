# home/dolphin.nix
{ pkgs, ... }:
{
  home.packages = [
    (pkgs.symlinkJoin {
      name = "dolphin-themed";
      paths = [ pkgs.kdePackages.dolphin ];
      nativeBuildInputs = [ pkgs.makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/dolphin --set QT_STYLE_OVERRIDE adwaita-dark
      '';
    })
  ];
}
