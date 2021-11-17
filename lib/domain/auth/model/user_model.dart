import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sched/domain/core/value_object.dart';
part 'user_model.freezed.dart';
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required UniqueId id,
})= _UserModel;
}
