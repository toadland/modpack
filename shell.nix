{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.packwiz
    pkgs.git
    pkgs.curl
    pkgs.unzip
    pkgs.jq
    pkgs.go
  ];

  shellHook = ''
    echo "=== Packwiz Modpack Manager ==="
    echo "Packwiz version: $(packwiz --version 2>/dev/null || echo 'checking...')"
    echo "Working directory: $(pwd)"
    echo ""
    echo "Available commands:"
    echo "  packwiz init          - Initialize new modpack"
    echo "  packwiz mod add       - Add a mod"
    echo "  packwiz mod remove    - Remove a mod"
    echo "  packwiz update        - Update all mods"
    echo "  packwiz refresh       - Refresh mod metadata"
    echo ""
  '';
}

