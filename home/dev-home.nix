{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Ruby ships with RubyGems and Bundler
    ruby

    # Debugging and analysis
    gdb
    valgrind

    # Editor tooling for C and C++ (clangd, clang-format)
    clang-tools

    # Generates compile_commands.json from a Makefile build for clangd
    bear
  ];

  # The Nix store is read-only, so gems are installed in a user directory
  home.sessionVariables = {
    GEM_HOME = "${config.home.homeDirectory}/.local/share/gem";
  };

  home.sessionPath = [
    "${config.home.homeDirectory}/.local/share/gem/bin"
  ];

  # Loads a project's flake devShell automatically when entering its directory
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
