import 'package:get_it/get_it.dart';
import 'package:medsync/features/auth/data/repos_impl/reset_password_repo_impl.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ResetPasswordRepoImpl>(ResetPasswordRepoImpl());
}
