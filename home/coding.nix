{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    git
    gh
    neovim
    opencode
    unzip
    kitty
    windsurf
    tree
  ];
}
