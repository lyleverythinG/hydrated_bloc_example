import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'personal_info_event.dart';
part 'personal_info_state.dart';

class PersonalInfoBloc
    extends HydratedBloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc() : super(const PersonalInfoInitial()) {
    on<SaveName>((event, emit) {
      emit(PersonalInfoState(fullName: event.fullName));
    });
  }

  @override
  PersonalInfoState? fromJson(Map<String, dynamic> json) {
    return PersonalInfoState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PersonalInfoState state) {
    return state.toJson();
  }
}
