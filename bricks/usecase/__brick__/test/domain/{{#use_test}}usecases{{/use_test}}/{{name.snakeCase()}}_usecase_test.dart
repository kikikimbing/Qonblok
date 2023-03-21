import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';


void main() {
  late {{name.pascalCase()}}UseCase {{name.camelCase()}}UseCase;
  late {{repo.pascalCase()}}Repository mock{{repo.pascalCase()}}Repository;

  setUp(() {
    mock{{repo.pascalCase()}}Repository = Mock{{repo.pascalCase()}}Repository();
    {{name.camelCase()}}UseCase =
        {{name.pascalCase()}}UseCase({{repo.camelCase()}}Repository: mock{{repo.pascalCase()}}Repository);
  });

  group("{{name.pascalCase()}} UseCase", () {
    test(
        'Given {{repo.pascalCase()}}Repository'
        'When {{repo.pascalCase()}}Repository call {{name.pascalCase()}}'
        'Then return {{repo.pascalCase()}} detail data', () async {
      when(mock{{repo.pascalCase()}}Repository.{{name.camelCase()}}(request: request))
          .thenAnswer((_) async => const Right(successResponse));

      final result = await {{name.camelCase()}}UseCase.call(request);

      expect(result, const Right(successResponse));
    });

    test(
        'Given {{repo.pascalCase()}}Repository'
        'When {{repo.pascalCase()}}Repository call {{name.pascalCase()}}'
        'Then return failure', () async {
      when(mock{{repo.pascalCase()}}Repository.{{name.camelCase()}}(request: request))
          .thenAnswer((_) async => Left(failedResponse));

      final result = await {{name.camelCase()}}UseCase.call(request);

      expect(result, Left(failedResponse));
    });
  });
}
