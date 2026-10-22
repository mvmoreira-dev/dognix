{ ... }:

{
  # Intel
  environment.sessionVariables.LIBVA_DRIVER_NAME = "iHD";
  hardware.cpu.intel.updateMicrocode = true;
  services.thermald.enable = true;
}
