{ pkgs, ... }:

{
  users.users."mavic" = {
    isNormalUser = true;
    description = "mavic";
    extraGroups = [ "networkmanager" "wheel" ];

    shell = pkgs.zsh;
    useDefaultShell = true;

    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  # zsh
  programs.zsh.enable = true;
}
