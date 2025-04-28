import 'package:bloc/bloc.dart';
import 'package:medsync/features/auth/domain/use_cases/reset_password_use_case.dart';
import 'package:meta/meta.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.resetPasswordUseCase) : super(ResetPasswordInitial());
  final ResetPasswordUseCase resetPasswordUseCase;
  String? code, email;
  bool verifyOTP() {
    if (code != null) {
      bool result = resetPasswordUseCase.verifyOTP(code!);
      result ? emit(VerifyOTPSuccess()) : emit(VerifyOTPFailure());
      return result;
    } else {
      emit(VerifyOTPFailure());
      return false;
    }
  }

  bool isExpiredOTP() {
    return resetPasswordUseCase.isExpiredOTP();
  }

  sendOTP() async {
    if (email != null) {
      bool result = await resetPasswordUseCase.sendOTP(email!);
      result ? emit(SentOTPSuccess()) : emit(SentOTPFailure());
    } else {
      emit(SentOTPFailure());
    }
  }
}
