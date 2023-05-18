sealed class EmployerEvent {}

class ReloadEmployers extends EmployerEvent {}

class AddNewEmployer extends EmployerEvent {
  final String name;

  AddNewEmployer(this.name);
}
