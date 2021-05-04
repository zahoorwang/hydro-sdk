import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/swidiSourceToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var res = swidiSourceToSwidIr(content: """
      class "dart:typed_data"::UnmodifiableFloat32ListView {
        "dart:core"::class::int indexOf(
          "dart:core"::class::double element, [
            "dart:core"::class::int start = 0
          ]);
      }
      
      """);

    expect(res, isNotNull);

    var unmodifiableFloat32ListView = SwidClass(
      name: "UnmodifiableFloat32ListView",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:typed_data",
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      extendedClass: null,
      implementedClasses: [],
      instanceFieldDeclarations: {},
      isMixin: false,
      mixedInClasses: [],
      staticConstFieldDeclarations: [],
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      typeFormals: [],
      methods: [
        SwidFunctionType(
          name: "indexOf",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {
            "start": SwidDefaultFormalParameter(
              name: "0",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              value: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "int",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                ),
              ),
            ),
          },
          normalParameterNames: [
            "element",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
          ],
          optionalParameterNames: [
            "start",
          ],
          optionalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "int",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
          ],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "int",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
          typeFormals: [],
        ),
      ],
    );

    expect(res, [SwidIr.fromSwidClass(swidClass: unmodifiableFloat32ListView)]);
  }, tags: "swid");
}