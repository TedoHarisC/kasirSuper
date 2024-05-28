import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_event.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, int> {
  BottomNavBloc() : super(0) {
    on<TapBottomNavEvent>((event, emit) {
      emit(event.index);
    });
  }
}
