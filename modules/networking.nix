{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # Firewall
  networking.firewall.checkReversePath = false;
}
