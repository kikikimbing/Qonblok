import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:qontak_core/state/view_data_state.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late {{name.pascalCase()}}UseCase mock{{name.pascalCase()}}UseCase;
  late {{name.pascalCase()}}Bloc {{name.camelCase()}}Bloc;

  setUp(() {
    mock{{name.pascalCase()}}UseCase = Mock{{name.pascalCase()}}UseCase();
    {{name.camelCase()}}Bloc = {{name.pascalCase()}}Bloc({{name.camelCase()}}UseCase: mock{{name.pascalCase()}}UseCase);
  });

  group("{{name.pascalCase()}}Bloc", () {
    blocTest<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      'Given {{name.pascalCase()}}UseCase'
      'When {{name.pascalCase()}}UseCase called successfully'
      'Then emit [{{name.pascalCase()}}State.loading(), {{name.pascalCase()}}State.loaded()]',
      build: () {
        when(mock{{name.pascalCase()}}UseCase.call(usecaseParams))
            .thenAnswer((_) async => const Right(successResponse));
        return {{name.camelCase()}}Bloc;
      },
      act: ({{name.pascalCase()}}Bloc bloc) =>
          bloc.add(const {{name.pascalCase()}}(request: requestParams)),
      expect: () => [
        {{name.pascalCase()}}State({{name.camelCase()}}State: ViewDataState.loading()),
        {{name.pascalCase()}}State(
          {{name.camelCase()}}State: ViewDataState.loaded(
            data: successResponse,
          ),
        ),
      ],
    );

    blocTest<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      'Given {{name.pascalCase()}}UseCase'
      'When {{name.pascalCase()}}UseCase call get ServerFailure'
      'Then emit [{{name.pascalCase()}}State.loading(), {{name.pascalCase()}}State.error()]',
      build: () {
        when(mock{{name.pascalCase()}}UseCase.call(usecaseParams))
            .thenAnswer((_) async => Left(testServerFailure));
        return {{name.camelCase()}}Bloc;
      },
      act: ({{name.pascalCase()}}Bloc bloc) =>
          bloc.add(const {{name.pascalCase()}}(request: requestParams)),
      expect: () => [
        {{name.pascalCase()}}State({{name.camelCase()}}State: ViewDataState.loading()),
        {{name.pascalCase()}}State(
          {{name.camelCase()}}State: ViewDataState.error(
            message: testServerFailure.message,
            failure: testServerFailure,
          ),
        ),
      ],
    );
  });
}
