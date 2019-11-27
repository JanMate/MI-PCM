class OfferDetail {
  final String type;
  final String description;
  final String place;
  final String address;
  final int fixedRentAmount;
  final int additionalVariableRentAmount;
  final double latitude;
  final double longitude;
  final List<String> equipment;


  OfferDetail(
      this.type,
      this.description,
      this.place,
      this.address,
      this.fixedRentAmount,
      this.additionalVariableRentAmount,
      this.latitude,
      this.longitude,
      this.equipment
    );

  String title() => type + " - " + place;

  int fullRentAmount() => fixedRentAmount + additionalVariableRentAmount;
}