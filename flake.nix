{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages."${system}";
  in {
    devShells."${system}".default = pkgs.mkShell {
      buildInputs = with pkgs; [
        quickshell
        kdePackages.qtdeclarative
      ];

      QML2_IMPORT_PATH = pkgs.lib.concatStringsSep ":" [
        "${pkgs.quickshell}/lib/qt-6/qml"
        "${pkgs.kdePackages.qtdeclarative}/lib/qt-6/qml"
      ];
    };
  };
}
