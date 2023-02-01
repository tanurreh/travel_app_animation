import 'package:travel_app/data/assets_path.dart';

class Event {
  String imagepath;
  String title;
  double starrating;
  int reviews;
  Event({
    required this.imagepath,
    required this.title,
    required this.starrating,
    required this.reviews,
  });
}

List<Event> eventlist = [
  Event(
      imagepath: CustomAssets.rv,
      title: "Explore Nature",
      starrating: 4.9,
      reviews: 124),
  Event(
      imagepath: CustomAssets.tent,
      title: "Night Camp",
      starrating: 4.8,
      reviews: 124)
];
