abstract class AddNoteState {}

class AddNoteInital extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessege;

  AddNoteFailure({required this.errorMessege});
}
