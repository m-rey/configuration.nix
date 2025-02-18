{
  config,
  lib,
  pkgs,
  ...
}: {
  fonts = {
    fontDir.enable = true;
    enableDefaultFonts = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      (nerdfonts.override {
        fonts = ["FiraCode" "FiraMono" "Noto" "Ubuntu"];
      })
    ];
    fontconfig = {
      defaultFonts = {
        serif = ["FiraCode"];
        sansSerif = ["FiraCode"];
        monospace = ["FiraMono"];
        emoji = ["Noto"];
      };
    };
  };
}
