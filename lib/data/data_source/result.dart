// abstract class Result<T> {
//   factory Result.success(T data) = Success;
//   factory Result.error(String data) = Error;
// }
//
// class Success<T> implements Result<T> {
//
//   final T data;
//
//   Success(this.data);
// }
//
// class Error<T> implements Result<T> {
//   final String message;
//
//   Error(this.message);
// }

// factory 생성자 만드는 문법
// factory class.이름 = 생성자 // 이름을 붙여준 생성자임.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.error(String e) = Error;
}
