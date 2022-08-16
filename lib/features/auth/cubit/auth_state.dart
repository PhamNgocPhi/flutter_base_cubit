part of 'auth_cubit.dart';


enum AuthStateEnum {unknown, unauthenticated, authenticated,}
class AuthState extends Equatable {

  final AuthStateEnum authState;

  const AuthState(this.authState);

  @override
  List<Object?> get props => [authState];
}