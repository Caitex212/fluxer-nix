{
  description = "Fluxer canary NixOS overlay";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
    in {
      packages.${system}.fluxer-canary = pkgs.appimageTools.wrapType2 {
        pname = "fluxer-canary";
        version = "2026.602.31138";
        src = pkgs.fetchurl {
          url = "https://api.canary.fluxer.app/dl/desktop/canary/linux/x64/2026.602.31138/appimage";
          sha256 = "0dmfzd3x652w5dr3h39bkzlxvq3vr3lmyg2sxslqrjnn19dl10bp";
        };
      };
    };
}
