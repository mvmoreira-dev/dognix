{ lib, ... }:

let
  images = [
    "image/png"
    "image/jpeg"
    "image/bmp"
    "image/gif"
    "image/webp"
    "image/tiff"
  ];

  # Maps every mime type in the list to the same desktop entry
  assoc = app: types: lib.genAttrs types (_: app);
in
{
  xdg = {
    enable = true;

    userDirs = {
      enable = true;
      createDirectories = true;
    };

    mimeApps = {
      enable = true;
      defaultApplications =
        assoc "sVisualizer.desktop" images
        // {
          "application/pdf" = "okularApplication_pdf.desktop";
          "inode/directory" = "org.kde.dolphin.desktop";
        };
    };

    desktopEntries = { 
      "org.kde.dolphin" = {
        name = "Dolphin";
        exec = "env QT_STYLE_OVERRIDE=adwaita-dark dolphin %u";
        icon = "org.kde.dolphin";
        categories = [ "Qt" "KDE" "System" "FileTools" "FileManager" ];
        mimeType = [ "inode/directory" ];
      };
    };
  };
}
