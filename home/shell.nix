{ ... }:

{
  programs.zsh = {
    enable = true;

   # Init
   profileExtra = ''
     if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
       exec niri-session
     fi
   '';
    
    # oh-my-zsh conf
    oh-my-zsh = {
      enable = true;
      theme = "gentoo";
      plugins = [ "git" "sudo" ];
    };

    # Aliases 
    shellAliases = {
      l        =  "ls -la";
      c        =  "clear";
      dsk      =  "cd '/home/mavic/Área\ de\ trabalho'";
      nixos-rb =  "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
      nixconf  =  "sudo $EDITOR /etc/nixos/"; 
      nixos-up =  "sudo nix flake update --flake /etc/nixos && sudo nixos-rebuild switch --flake /etc/nixos#nixos --upgrade";
    };

    initContent = ''
    '';
  };
}
