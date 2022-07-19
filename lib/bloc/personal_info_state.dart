part of 'personal_info_bloc.dart';

class PersonalInfoState extends Equatable {
  final String fullName;

  const PersonalInfoState({required this.fullName});
  PersonalInfoState.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'];

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
      };

  @override
  List<Object?> get props => [fullName];
}

class PersonalInfoInitial extends PersonalInfoState {
  const PersonalInfoInitial() : super(fullName: '');
}
