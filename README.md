# resourcesText

Remote asset store for the **Text on Photo** app (fonts, images, filters,
stickers, backgrounds…). The app downloads these on demand from a CDN and
caches them on-device, so they don't have to ship inside the APK.

## Layout

Folders mirror the app's `assets/` tree, e.g.:

```
fonts/            TTF/OTF fonts
backgrounds/      background images (webp)
camon/filter/     512x512 LUTs for photo filters
camon/stickers/   stickers
ornament/         decorative art
template_bg/      template background images
...
manifest.json     index of every file (path + size) + base URLs
```

## How the app fetches it

The app reads `manifest.json`, then loads each file via jsDelivr (cached CDN):

```
https://cdn.jsdelivr.net/gh/botusieudang/resourcesText@main/<path>
```

Fallback (no CDN cache, rate-limited):

```
https://raw.githubusercontent.com/botusieudang/resourcesText/main/<path>
```

See `src/remoteAssets.ts` in the app for the downloader + on-device cache.

## Regenerating the manifest

After adding/removing files, from the app repo:

```
node scripts/gen-resource-manifest.js ../resourcesText
git -C ../resourcesText add -A && git -C ../resourcesText commit -m "update assets" && git -C ../resourcesText push
```
