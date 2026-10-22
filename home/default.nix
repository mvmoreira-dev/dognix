{ ... }:

{
  imports = [
    ./gtk.nix
    ./qt.nix
    ./shell.nix
    ./editor.nix
    ./kitty.nix
    ./xdg.nix
    ./dev-home.nix
  ];

  stylix.targets.rofi.enable = false;

  home.stateVersion = "26.05";
}
