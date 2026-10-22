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
  };
}
