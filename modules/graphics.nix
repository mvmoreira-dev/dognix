{ config, pkgs, ... }:

{
  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Intel iGPU
  hardware.graphics.extraPackages = with pkgs; [ intel-media-driver ];

  # NVIDIA
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    powerManagement.enable = true;

    package = config.boot.kernelPackages.nvidiaPackages.new_feature;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  # LACT Daemon
  services.lact.enable = true;

  # Load the nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = [ "nvidia" ];
}
