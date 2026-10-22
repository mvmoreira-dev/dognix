{ pkgs, ... }:

{
  security.polkit.enable = true;

  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "Polkit Authentication Agent";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      Type = "simple";
      Restart = "on-failure";
      RestartSec = 2;
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
    };
  };
}
