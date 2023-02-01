// ignore_for_file: public_member_api_docs, sort_constructors_first
class Order {
  int orderno;
  double orderdistance;
  String pickupaddress;
  String deliveradress;
  String estimatedfare;
  Order({
    required this.orderno,
    required this.orderdistance,
    required this.pickupaddress,
    required this.deliveradress,
    required this.estimatedfare,
  });
}

List<Order> orderlist = [
  Order(
      orderno: 311,
      orderdistance: 2.5,
      pickupaddress: "3rd Ave road, Ikot Ansa",
      deliveradress: "13th SDAT Cricket Ground",
      estimatedfare: "N300"),
  Order(
      orderno: 351,
      orderdistance: 2.7,
      pickupaddress: "7th avenue, Ashok Nagar road",
      deliveradress: "24th Highway road, Old nice palace",
      estimatedfare: "N400"),
  Order(
      orderno: 321,
      orderdistance: 2.9,
      pickupaddress: "7th street, SDAT Cricket Ground",
      deliveradress: "15th Highway road, Old nice palace",
      estimatedfare: "N400"),
  Order(
      orderno: 342,
      orderdistance: 3.2,
      pickupaddress: "Apples eatery, marian road",
      deliveradress: "525system, Marian road",
      estimatedfare: "N300"),
  Order(
      orderno: 369,
      orderdistance: 3.2,
      pickupaddress: "2nd avenue, School gate road",
      deliveradress: "525system, Marian road",
      estimatedfare: "N400"),
];
