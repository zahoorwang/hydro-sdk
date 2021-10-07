import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiConstBooleanTrue.freezed.dart';

@freezed
class SwidiConstBooleanTrue
    with
        _$SwidiConstBooleanTrue,
        HashKeyMixin<SwidiConstBooleanTrue>,
        HashComparableMixin<SwidiConstBooleanTrue> {
  SwidiConstBooleanTrue._();

  factory SwidiConstBooleanTrue() = _$SwidiConstBooleanTrueCtor;

  @override
  List<int> get hashableParts => [1];

  @override
  SwidiConstBooleanTrue clone() => SwidiConstBooleanTrue();
}