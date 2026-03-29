{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    neovim
    opencode
    unzip
    kitty
    windsurf
    tree
  ];

  programs.git = {
    enable = true;
    userName = "roaming";
    userEmail = "wilhelmus4321@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };

  programs.gh.enable = true;
}
