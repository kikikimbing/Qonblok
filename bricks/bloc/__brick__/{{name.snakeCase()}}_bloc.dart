import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qontak_core/state/view_data_state.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_bloc.freezed.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{usecase.pascalCase()}}UseCase {{usecase.camelCase()}}UseCase;

  {{name.pascalCase()}}Bloc({
    required this.{{usecase.camelCase()}}UseCase,
  }) : super({{name.pascalCase()}}State(
    {{name.camelCase()}}State: ViewDataState.initial(),
  )) {
    on<{{name.pascalCase()}}>(_{{name.camelCase()}});
  }

  Future<void> _{{name.camelCase()}}(
    {{name.pascalCase()}} event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    emit(
      state.copyWith(
        {{name.camelCase()}}State: ViewDataState.loading(),
      ),
    );
    final result = await {{usecase.camelCase()}}UseCase.call(event.request);
    result.fold(
      (failure) => emit(
        state.copyWith(
          {{name.camelCase()}}State: ViewDataState.error(
            message: failure.message,
            failure: failure,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          {{name.camelCase()}}State: ViewDataState.loaded(
            data: success,
          ),
        ),
      ),
    );
  }



}
