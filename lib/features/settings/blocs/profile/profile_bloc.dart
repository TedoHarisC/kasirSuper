import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/settings/settings.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<GetProfileEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading));

        final service = await ProfileService.getProfile();

        emit(state.copyWith(status: Status.success, user: service));
      } catch (e) {
        emit(state.copyWith(status: Status.failure, error: e.toString()));
      }
    });
  }
}
