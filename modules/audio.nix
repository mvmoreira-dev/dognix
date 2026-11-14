{ ... }:

{
  # Sound with pipewire
  security.rtkit.enable = true;
  services.pipewire.wireplumber.enable = true;

  services.pipewire = {
    enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };

    pulse.enable = true;
    jack.enable = true;
  };
}
