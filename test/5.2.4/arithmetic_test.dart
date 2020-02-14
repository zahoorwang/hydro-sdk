import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/luastate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = LuaState();

    List<String> outLines = [];

    state.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    List<String> expectedOutLines = [
      "3",
      "0.5",
      "840",
      "6",
      "inf",
      "-nan",
      "-inf",
      "0.333",
      "0.6",
      "-0.111"
    ];

    var res = await state.doFile("5.2.4/arithmetic.lc");

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  });
}