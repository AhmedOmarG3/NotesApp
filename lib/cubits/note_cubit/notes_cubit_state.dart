part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}
class AddNoteLoading extends NotesCubitState {}

class AddNoteSuccess extends NotesCubitState {

  final List<NoteModel> notes;

  AddNoteSuccess({required this.notes});
}

class AddNoteFailure extends NotesCubitState {
  final String errorMessege;

  AddNoteFailure({required this.errorMessege});
}
