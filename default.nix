{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
  packages = with pkgs; [
    fmt
    libgcc
    gnumake
    cmake
    gcc
    gdb
    lldb
    clang
    clang-tools
    boost
  ];
}