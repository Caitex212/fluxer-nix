# unofficial fluxer-canary-nix

NixOS overlay for the [Fluxer canary](https://canary.fluxer.app) desktop client.

## Usage

Add the overlay in your `flake.nix`, then add `fluxer-canary` to your packages:

```nix
environment.systemPackages = with pkgs; [ fluxer-canary ];
```

## Updating (Note to myself)

I use this link to find out what the newest canary version is:
```
https://api.canary.fluxer.app/dl/desktop/canary/linux/x64/latest/appimage
```

Then I use this to get the hash:
```bash
nix-prefetch-url https://api.canary.fluxer.app/dl/desktop/canary/linux/x64/VERSION/appimage
```

## License

MIT
