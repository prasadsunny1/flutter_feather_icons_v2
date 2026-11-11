#!/bin/bash
# Regenerates lib/flutter_feather_icons_v2.dart from fonts/fonts_config.json.
set -e
echo "generating flutter_feather_icons_v2.dart"
dart run tool/generate_fonts.dart fonts/fonts_config.json
echo "formatting"
dart format lib/flutter_feather_icons_v2.dart
echo "build process completed successfully"
