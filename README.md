# flutter_feather_icons_v2

Feather icons for Flutter, rebuilt so every icon is a plain `const IconData`. This is needed on Flutter 3.47+, where `IconData` is final and can no longer be subclassed.

Usage is unchanged from `flutter_feather_icons`:

```dart
import 'package:flutter_feather_icons_v2/flutter_feather_icons_v2.dart';

Icon(FeatherIcons.search)
```

## Credits

- This package is a fork of [flutter_feather_icons](https://github.com/muj-programmer/flutter_feather_icons) 2.0.0+1 by Nikhil Anand, MIT License. The icon names, codepoints, font and generator come from that package.
- The icons are [Feather](https://feathericons.com) by Cole Bemis, MIT License.

Both licenses are in [LICENSE](LICENSE).

## Regenerating the icons

`lib/flutter_feather_icons_v2.dart` is generated from `fonts/fonts_config.json`:

```
bash tool/build.sh
```
