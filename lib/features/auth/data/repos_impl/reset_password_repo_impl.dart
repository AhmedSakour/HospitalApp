import 'package:email_otp/email_otp.dart';
import 'package:medsync/features/auth/domain/repos/reset_password_repo.dart';

class ResetPasswordRepoImpl extends ResetPasswordRepo {
  @override
  bool verifyOTP(String code) {
    return EmailOTP.verifyOTP(otp: code);
  }

  @override
  Future<bool> sendOTP(String email) async {
    return await EmailOTP.sendOTP(email: email);
  }

  @override
  bool isExpiredOTP() {
    return EmailOTP.isOtpExpired();
  }
}
