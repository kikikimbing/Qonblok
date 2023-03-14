import 'package:fpdart/fpdart.dart';
import 'package:qontak_core/domain/entities/failure.dart';
import 'package:qontak_core/usecases/usecase.dart';

class {{name.pascalCase()}}UseCase implements UseCase<{{type.pascalCase()}}, {{params.pascalCase()}}> {
  final {{repo.pascalCase()}}Repository {{repo.camelCase()}}Repository;

  const {{name.pascalCase()}}UseCase({
    required this.{{repo.camelCase()}}Repository,
  });

  @override
  Future<Either<Failure, {{type.pascalCase()}}>> call({{params.pascalCase()}} params) async =>
      await {{repo.camelCase()}}Repository.{{action.camelCase()}}(request: params);
}
