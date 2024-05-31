part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class GetProfileEvent extends ProfileEvent {}

class SubmitProfileEvent extends ProfileEvent {
  final String name;
  final String email;
  final String phoneNumber;

  const SubmitProfileEvent({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  @override
  List<Object> get props => [name, email, phoneNumber];
}
