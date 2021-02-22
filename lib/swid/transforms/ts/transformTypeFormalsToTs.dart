import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalToTs.dart';

String transformTypeFormalsToTs(
        {@required List<SwidTypeFormal> swidTypeFormals}) =>
    swidTypeFormals.isNotEmpty
        ? ([
            "<",
            swidTypeFormals
                .map((x) => transformTypeFormalToTs(swidTypeFormal: x))
                .join(", "),
            ">"
          ]).join()
        : "";