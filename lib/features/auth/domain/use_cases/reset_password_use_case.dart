import 'package:medsync/features/auth/domain/repos/reset_password_repo.dart';

class ResetPasswordUseCase {
  final ResetPasswordRepo resetPasswordRepo;

  ResetPasswordUseCase(this.resetPasswordRepo);

  bool verifyOTP(String code) {
    return resetPasswordRepo.verifyOTP(code);
  }

  bool isExpiredOTP() {
    return resetPasswordRepo.isExpiredOTP();
  }

  Future<bool> sendOTP(String email) {
    return resetPasswordRepo.sendOTP(email);
  }
}
