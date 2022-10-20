import 'package:flutter/foundation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_state.g.dart';

const HomeState defaultHomeState = HomeState(
  index: 0,
);

@CopyWith()
@JsonSerializable()
@immutable
class HomeState {
  const HomeState({required this.index});
  final int index;

  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStateToJson(this);
}
