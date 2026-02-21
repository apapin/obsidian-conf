# Capricorn

A shared Obsidian theme with per-vault color palettes.

The theme handles fonts, sizes, and weights. Each vault gets a small `colors.css` snippet for its unique palette.

## Structure

```
theme.css         # Shared fonts & sizing (Sentinel, Avenir Next, IBM Plex Mono)
manifest.json     # Obsidian theme manifest
colors/
  deep-sea.css    # Navy, coral, teal
  arctic.css      # Slate, ice blue, silver
  night-owl.css   # Deep purple, pink, blue
  kleja.css       # Dark red-brown, orange, copper
  acolyte.css     # Warm brown, burnished gold, sage
deploy.sh         # Deploy theme + snippets to all vaults
```

## Usage

Edit `theme.css` or any `colors/*.css`, then run:

```sh
./deploy.sh
```

This copies the theme and the matching color snippet to each vault.

## Adding a new vault

1. Create a new `colors/<name>.css`
2. Add the vault path to `deploy.sh`
3. Run `./deploy.sh`
