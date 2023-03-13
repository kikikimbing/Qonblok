class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}RemoteDataSource {{name.snakeCase()}}RemoteDataSource;

  {{name.pascalCase()}}RepositoryImpl({
    required this.{{name.snakeCase()}}RemoteDataSource,
  });
}