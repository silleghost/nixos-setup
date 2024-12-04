{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{

  nix.settings.trusted-substituters = [ "https://ai.cachix.org" ];
  nix.settings.trusted-public-keys = [
    "ai.cachix.org-1:N9dzRK+alWwoKXQlnn0H6aUx0lU/mspIoz8hMvGvbbc="
  ];
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  environment.systemPackages = with pkgs; [
    git
    wget
    vim
    inputs.nixvim.packages.x86_64-linux.default
  ];

  system.stateVersion = "24.05"; # Did you read the comment?
}
