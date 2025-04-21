{
  pkgs,
  pkgs-unstable,
  # nur-ryan4yin,
  ...
}: {
  home.packages = with pkgs; [
    docker-compose
    dive # explore docker layers
    lazydocker # Docker terminal UI.
    skopeo # copy/sync images between registries and local storage
    go-containerregistry # provides `crane` & `gcrane`, it's similar to skopeo

  ];

  programs = {

  };
}
