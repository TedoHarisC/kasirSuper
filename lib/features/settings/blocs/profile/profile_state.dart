part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  const ProfileState({
    this.error,
    this.status = Status.initial,
    this.user,
  });

  factory ProfileState.initial() {
    return const ProfileState();
  }

  final UserModel? user;
  final Status status;
  final String? error;

  ProfileState copyWith({
    UserModel? user,
    Status? status,
    String? error,
  }) {
    return ProfileState(
      error: error,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [error, status, user];
}
