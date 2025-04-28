part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class SentOTPSuccess extends ResetPasswordState {}

final class SentOTPFailure extends ResetPasswordState {}

final class VerifyOTPSuccess extends ResetPasswordState {}

final class VerifyOTPFailure extends ResetPasswordState {}
