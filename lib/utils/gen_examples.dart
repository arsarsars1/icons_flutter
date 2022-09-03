// /* Generates examples for flutter_icon
//  * dart ./gen_examples.dart ../fontconfigs/ ../example/lib/src/icon_lists
//  */
//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' as path;
//
// import 'util.dart';
//
// void main(List<String> arguments) {
//   final inDir = Directory(arguments.first);
//   final outDir = Directory(arguments[1]);
//
//   if (!inDir.existsSync()) {
//     debugPrint('Cannot find the file "${arguments.first}".');
//   }
//   if (!outDir.existsSync()) {
//     debugPrint('Cannot find the example dir "${arguments[1]}".');
//   }
//
//   List dirEntities =
//       inDir.listSync(recursive: false, followLinks: false).toList();
//
//   List<String> iconFamilies = [];
//
//   for (FileSystemEntity entity in dirEntities) {
//     if (entity is File && entity.path.endsWith(".json")) {
//       Map<String, dynamic> config = json.decode(entity.readAsStringSync());
//       String famName = config['name'].toString();
// //      String baseName = dartName(famName);
//       String iconListName = dartBaseFilename(famName);
//       String dartFileName = "${dartBaseFilename(famName)}.dart";
//       iconFamilies.add(iconListName);
//
//       List<dynamic> icons = config['glyphs'];
//
//       List<String> dartContent = [
//         '',
//         "import 'package:icons_flutter/$dartFileName';",
//         "import '../flutter_icon_model.dart';",
//         '',
//         '// NB: DO NOT EDIT! This file is auto-generated. See util/gen_examples.dart',
//         '',
//         'final $iconListName = <FlutterIconModel>[',
//       ];
//
//       for (Map<String, dynamic> gDef in icons) {
//         String gName = convertGlyphName(gDef['css'].toString());
// //        String gCode = convertGlyphCode(gDef['code'].toString());
//         dartContent.add(
//             '    FlutterIconModel($famName.$gName, "$famName", "$gName"),');
//       }
//
//       dartContent.add('];');
//
//       File dartFile = File(path.join(outDir.path, dartFileName));
//       dartFile.writeAsStringSync(dartContent.join('\n'));
//     }
//   }
//   File allIconFile = File(path.join(outDir.path, "all_icons.dart"));
//
//   List<String> dartContent = [
//     '',
//     "import '../flutter_icon_model.dart';",
//     "import 'package:flutter_icon_example/src/flutter_icon_model.dart';",
//     '',
//     '// NB: DO NOT EDIT! This file is auto-generated. See util/gen_examples.dart',
//     '',
//   ];
//   for (String fName in iconFamilies) {
//     dartContent.add("import '$fName.dart';");
//   }
//   dartContent.add("");
//   dartContent.add("final allIcons = <FlutterIconModel>[]");
//   for (String fName in iconFamilies) {
//     dartContent.add("  ..addAll($fName)");
//   }
//   dartContent.add(";");
//   allIconFile.writeAsStringSync(dartContent.join('\n'));
// }
