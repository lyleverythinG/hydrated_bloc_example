part of 'personal_info_bloc.dart';

abstract class PersonalInfoEvent extends Equatable {
  const PersonalInfoEvent();
  @override
  List<Object> get props => [];
}

class SaveName extends PersonalInfoEvent {
  final String fullName;
  const SaveName({required this.fullName});
}
