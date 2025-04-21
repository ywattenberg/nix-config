{
  pkgs,
  nur-ryan4yin,
  ...
}: {
  # https://github.com/catppuccin/btop/blob/main/themes/catppuccin_mocha.theme
  # xdg.configFile."btop/themes".source = "${nur-ryan4yin.packages.${pkgs.system}.catppuccin-btop}/themes";

  # replacement of htop/nmon
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "tokyo-night";
      theme_background = false; # make btop transparent
    };
  };
}
