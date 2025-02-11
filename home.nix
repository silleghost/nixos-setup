{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs; [
    git
  ];

  programs.git = {
    enable = true;
    userName = "silleghost";
    userEmail = "silleghost@gmail.com";

  };

  programs.git-credential-oauth.enable = true;

  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
      upgrade = "sudo nixos-rebuild sitch --upgrade";
    };
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
