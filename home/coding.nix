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
    extraConfig.credential."https://github.com" = {
      helper = "";
      helper = "!/etc/profiles/per-user/roaming/bin/gh auth git-credential";
    };
    extraConfig.credential."https://gist.github.com" = {
      helper = "";
      helper = "!/etc/profiles/per-user/roaming/bin/gh auth git-credential";
    };
  };

  programs.gh.enable = true;
}
