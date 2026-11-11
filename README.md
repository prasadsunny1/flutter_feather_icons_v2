# flutter_feather_icons_v2

Feather icons for Flutter, rebuilt so every icon is a plain `const IconData`. This is needed on Flutter 3.47+, where `IconData` is final and can no longer be subclassed.

Usage is unchanged from `flutter_feather_icons`:

```dart
import 'package:flutter_feather_icons_v2/flutter_feather_icons_v2.dart';

Icon(FeatherIcons.search)
```

## Why this fork exists

The original `flutter_feather_icons` (2.0.0+1) declares each icon as a subclass of `IconData`:

```dart
class FeatherIconData extends IconData { ... }
```

Flutter 3.47 made `IconData` a `final` class, so that subclass no longer compiles. Any app that upgrades to Flutter 3.47 or later hits a build error in the package.

This package fixes that for modern Flutter:
- Every icon is a plain `const IconData(...)` instead of a subclass.
- The public API is unchanged: same `FeatherIcons` names, same codepoints, same font family and asset. Code that used `flutter_feather_icons` only needs the import changed.
- Icons look the same. The glyphs come from the same `feather.ttf` font.

Compatibility: Dart 3.13+ and Flutter 3.47+. The `flutter` and `sdk` constraints in `pubspec.yaml` enforce this.

If you are on an older Flutter, keep using the original package.

## Credits

- This package is a fork of [flutter_feather_icons](https://github.com/muj-programmer/flutter_feather_icons) 2.0.0+1 by Nikhil Anand, MIT License. The icon names, codepoints, font and generator come from that package.
- The icons are [Feather](https://feathericons.com) by Cole Bemis, MIT License.

Both licenses are in [LICENSE](LICENSE).

## Regenerating the icons

`lib/flutter_feather_icons_v2.dart` is generated from `fonts/fonts_config.json`:

```
bash tool/build.sh
```
