{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    vis
    wget
    (discord.override {
      withVencord = true;
    })
    #gearlever
    pciutils
    libreoffice
    easyeffects
    gpu-screen-recorder
    gpu-screen-recorder-gtk
    rnnoise-plugin
    htop
    xwayland-satellite
    wineWow64Packages.stable
    winetricks
    wineWow64Packages.waylandFull
    papirus-icon-theme
    gimp
    noctalia
    nwg-look
    lxappearance
    gnome-themes-extra
    adwaita-icon-theme
    adw-gtk3
    wl-clipboard
    kitty
    vlc
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default
    thunar
    pavucontrol
    obs-cmd
    python3Packages.websocket-client
    procps
    xdg-utils
    proton-vpn
    protonplus
    mission-center
    pcsx2
    imv
    netflix
    zapzap
    qalculate-gtk
    libqalculate

    # DEV
    git
    gcc
    binutils
    gnumake
    cmake
    ninja
    meson
    pkg-config

    # KDE Packages
    kdePackages.dolphin
    kdePackages.kio-extras
    kdePackages.breeze-icons
    kdePackages.kate
  ];

  environment.pathsToLink = [ "/include" "/lib/pkgconfig" "/share/pkgconfig" ];

  environment.variables.PKG_CONFIG_PATH = "/run/current-system/sw/lib/pkgconfig:/run/current-system/sw/share/pkgconfig";
}
