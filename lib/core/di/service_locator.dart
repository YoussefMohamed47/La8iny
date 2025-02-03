import 'package:get_it/get_it.dart';
import 'package:la8iny/auth/data/repo%20impl/auth_repo_impl.dart';
import 'package:la8iny/auth/presentation/cubit/auth_cubit.dart';
import 'package:la8iny/auth/presentation/repo/auth_repo.dart';

final sl = GetIt.instance; // Service Locator

void initServiceLocator() {
  // Repository
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl());
  // Bloc
  sl.registerFactory(
      () => AuthCubit(sl())); // sl() is a shorthand for sl.call<AuthRepo>()
}
