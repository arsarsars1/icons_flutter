## 0.0.1

* This IconsFlutter library contains several icon libraries.
* The IconsFlutter class is provided to access all Icons.
* Refactored to support the latest flutter version.
* Fixed to have the better performance

## 0.0.2

* Example added
* code improvements
* fixes

## 0.0.3

* Package analyzed updated
* Code refactored

## 0.0.4
* Readme updated
* flutter version upgrade

## 0.0.5

* flutter version upgrade

## 0.0.6

* Fixed README markdown rendering for the `split_icon` configuration section ([#1](https://github.com/arsarsars1/icons_flutter/issues/1))
* Updated Flutter SDK constraint to `>=3.41.0` and Dart SDK to `^3.11.5`
* Updated `flutter_lints` to `^6.0.0`

## 0.0.7

* Compatible with Flutter versions where `IconData` is a final class ([breaking change](https://docs.flutter.dev/release/breaking-changes/icondata-class-marked-final))
* Icons now use `IconData` constructors directly instead of subclassing via `IconsFlutterData`
* `FlutterIcons` remains part of the public API and is exported from `package:icons_flutter/icons_flutter.dart`
* Fixed Entypo font family name to match the registered `"Entypo"` font ([#3](https://github.com/arsarsars1/icons_flutter/pull/3))

## 1.0.0

* **Breaking:** Migrated from `package:flutter/material.dart` to standalone [`package:material_ui`](https://pub.dev/packages/material_ui) ([Flutter guidance](https://docs.flutter.dev/release/breaking-changes/material-ui-and-cupertino-ui))
* Requires Flutter `>=3.47.0` / Dart `^3.13.0`; depends on `material_ui: ^1.6.0`
* Icon glyph libraries import `flutter/widgets.dart` only (`IconData`)
* `IconToggle` and the example app use `package:material_ui/material_ui.dart`
* Consumers still on in-framework Material may need `MaterialUiCompatibilityBridge` for theme/localizations; Material-specific type mismatches still require aligning on `material_ui` (this package’s public glyph API remains `IconData`-centric)
