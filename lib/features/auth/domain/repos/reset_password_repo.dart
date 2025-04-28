abstract class ResetPasswordRepo {
  bool verifyOTP(String code);
  bool isExpiredOTP();
  Future<bool> sendOTP(String email);
}
