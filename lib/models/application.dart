class Application {
  final String name;
  final String phone;
  final String hobby;


  Application({required this.name, required this.phone, required this.hobby});
}
int getParticipantCount(String hobbyTitle) {
  return applications.where((app) => app.hobby == hobbyTitle).length;
}


List<Application> applications = [];
