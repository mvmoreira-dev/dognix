{ ... }:

{
  imports = [
    # Hardware conf
    ./hardware-configuration.nix

    # Modules
    ./modules/boot.nix
    ./modules/nix.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/desktop.nix
    ./modules/audio.nix
    ./modules/audio-filters.nix
    ./modules/hardware.nix
    ./modules/graphics.nix
    ./modules/theming.nix
    ./modules/polkit.nix
    ./modules/users.nix
    ./modules/home-manager.nix
    ./modules/programs.nix
    ./modules/packages.nix
    ./modules/flatpak.nix
    ./modules/dev-modules.nix
    ./modules/display-manager.nix
  ];

  # Do not change this after the first install.
  system.stateVersion = "26.05";
}
