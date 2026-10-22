{ ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      hide_window_decorations = "yes";
      window_padding_width = 8;
      confirm_os_window_close = 0;
      enable_audio_bell = "no";
    };
  };
}
