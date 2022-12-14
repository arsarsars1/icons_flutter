English

# icons_flutter

[![pub package](https://img.shields.io/pub/v/icons_flutter.svg)](https://pub.dartlang.org/packages/icons_flutter)

The Flutter icon package provides you 14k+ additional icons to use in your apps.

## Notice
>> 1. icon names that begin with a number are preceded by a `$`prefix
>> 2. icon named with the dart keyword have the `_` suffix added

## Bundled Icon Sets

* [`AntDesign`](https://ant.design/) by AntFinance (**297** icons)
* [`Brandico`](https://scripts.sil.org/OFL) by Vitaly Puzrin **Author:** Crowdsourced, for Fontello project (**44** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Elusive`](https://aristeides.com/) by Aristeides Stathopoulos (**270** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Entypo`](https://entypo.com) by Daniel Bruce (**411** icons)
* [`EvilIcons`](https://evil-icons.io) by Alexander Madyankin & Roman Shamin (v1.10.1, **70** icons)
* [`Feather`](https://feathericons.com) by Cole Bemis & Contributors (v4.7.0, **266** icons)
* [`FontAwesome`](https://fortawesome.github.io/Font-Awesome/icons/) by Dave Gandy (v4.7.0, **675** icons)
* [`FontAwesome 5`](https://fontawesome.com) by Fonticons, Inc. (v5.7.0, **1500** (free))
* [`Foundation`](https://zurb.com/playground/foundation-icon-fonts-3) by ZURB, Inc. (v3.0, **283** icons)
* [`Ionicons`](https://ionicons.com/) by Ben Sperry (v4.2.4, **696** icons)
* [`MaterialIcons`](https://www.google.com/design/icons/) by Google, Inc. (v3.0.1, **932** icons)
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) by MaterialDesignIcons.com  (v4.0.96, **4416** icons)
* [`Octicons`](https://octicons.github.com) by Github, Inc. (v8.0.0, **177** icons)
* [`Zocial`](https://zocial.smcllns.com/) by Sam Collins (v1.0, **100** icons)
* [`SimpleLineIcons`](https://simplelineicons.github.io/) by Sabbir & Contributors (v2.4.1, **189** icons)
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) by erikflowers (v2.0.10, **596** icons)
* [`Entypo`](https://entypo.com/) by Entypo (**411** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Font Awesome 5`](https://fortawesome.github.com/Font-Awesome/) by Dave Gandy (**1437** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Fontelico`](https://fontello.com/) by Crowdsourced, for Fontello project (**34** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Linearicons`](https://linearicons.com/) by Perxis (**175** icons) [`License:`](https://creativecommons.org/licenses/by-sa/4.0/)
* [`Linecons`](https://designmodo.com/linecons-free/) by Designmodo for Smashing Magazine (**48** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Maki`](https://mapbox.com/maki/) by https://mapbox.com/maki/ (**63** icons) [`License:`](https://github.com/mapbox/maki/blob/gh-pages/LICENSE.txt)
* [`Meteocons`](https://www.alessioatzeni.com/) by Alessio Atzeni (**47** icons) [`License:`](https://scripts.sil.org/OFL)
* [`MFG Labs`](https://www.mfglabs.com/) by Daniel Bruce **Author:** MFG Labs (**153** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Modern Pictograms`](https://thedesignoffice.org/project/modern-pictograms/) by John Caserta (**91** icons) [`License:`](https://scripts.sil.org/OFL)
* [`RPG Awesome`](https://nagoshiashumari.github.io/Rpg-Awesome/) by Daniela Howe & Ivan Montiel (**495** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Typicons`](https://typicons.com/) by Stephen Hutchings 2012 (**293** icons) [`License:`](https://scripts.sil.org/OFL)
* [`Web Symbols`](https://www.justbenicestudio.com/) by Just Be Nice studio 2011 (**85** icons) [`License:`](https://scripts.sil.org/OFL)

## Usage
To use this plugin, add `icons_flutter` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Widget

### IconToggle

| Prop                 | Description                                                                                                                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| selectedIconData  | Icon is displayed when value is true |
| unselectedIconData | Icon is displayed when value is false |
| activeColor | When value is true, the icon color is displayed |
| inactiveColor | When value is false, the icon color is displayed |
| value| Whether this IconToggle is selected. |
| onChanged | Called when the value of the IconToggle should change. |
| duration| The duration of the transition from selected Icon to unselected Icon |
| reverseDuration | he duration of the transition from unselected Icon to selected Icon |
| transitionBuilder | Transition animation function between the selected Icon and the unselected Icon |


## Example

``` dart
// Import package
import 'package:icons_flutter/icons_flutter.dart';
import 'package:flutter/material.dart';

// 0.0.1 version used
Icon(AntDesign.stepforward),
Icon(Ionicons.ios_search),
Icon(FontAwesome.glass),
Icon(MaterialIcons.ac_unit),
Icon(FontAwesome5.address_book),
Icon(FontAwesome5Solid.address_book),
Icon(FontAwesome5Brands.$500px)

// The IconsFlutter class is provided to access all Icons
// Icon name in the original basis added icon set abbreviation name as suffix
// Hereinafter referred to as the following
//Ant Design Icons -> ant,
//Entypo Icons -> ent,
//Evil Icons -> evi,
//Feather Icons -> fea,
//Font Awesome Icons -> faw,
//Font Awesome 5 Regular -> faw5
//Font Awesome 5 Solid -> faw5s
//Font Awesome 5 Brands -> faw5b
//Foundation Icons -> fou,
//Ionicons Icons -> ion,
//Material Community Icons -> mco,
//Material Icons -> mdi,
//Octicons Icons -> oct,
//Simple Line Icons -> sli,
//Zocial Icons -> zoc,
//Weather Icons -> wea
Icon(FlutterIcons.stepforward_ant)
Icon(FlutterIcons.html5_faw)
...

// Previous versions of 1.0.0 are used
Icon(Ionicons.getIconData("ios-search"));
Icon(AntDesign.getIconData("stepforward"));
Icon(FontAwesome.getIconData("glass"));
Icon(MaterialIcons.getIconData("ac-unit"));
Icon(FontAwesome5.getIconData("address-book"));
Icon(FontAwesome5.getIconData("address-book",weight: IconWeight.Solid));
Icon(FontAwesome5.getIconData("500px", weight: IconWeight.Brand));
```

### How to keep only the fonts used in the project.

#### step 1
Execute the command
```
pub global activate split_icon
```
#### step2
Add the font you want to leave in the project's pubspec file
```dart
//Ant Design Icons -> ant,
//Entypo Icons -> ent,
//Evil Icons -> evi,
//Feather Icons -> fea,
//Font Awesome Icons -> faw,
//Font Awesome 5 Regular -> faw5
//Font Awesome 5 Solid -> faw5s
//Font Awesome 5 Brands -> faw5b
//Foundation Icons -> fou,
//Ionicons Icons -> ion,
//Material Community Icons -> mco,
//Material Icons -> mdi,
//Octicons Icons -> oct,
//Simple Line Icons -> sli,
//Zocial Icons -> zoc,
//Weather Icons -> wea

 ```
 ...

icons_flutter:
  includes:
    -ant 
    -mco
 ...
 ```

#### step3
Execute the command in the project directory
``` 
split_icon
```

