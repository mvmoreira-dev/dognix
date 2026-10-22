{ ... }:

{
  services.flatpak = {
    enable = true;

    # Remove anything not declared here
    uninstallUnmanaged = true;

    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };

    packages = [
      "org.gtk.Gtk3theme.adw-gtk3-dark"
      "org.vinegarhq.Sober"
      "org.vinegarhq.Vinegar"
    ];
  };
}
