class House {
  const House({
    required this.name,
    required this.location,
    required this.ownerName,
    required this.imagePath,
    required this.measurement,
    required this.pricePerNight,
    required this.numOfBedrooms,
    required this.numOfBathrooms,
    this.discountPrice = 0,
  });

  final String name;
  final String location;
  final String ownerName;
  final String imagePath;
  final int measurement;
  final int pricePerNight;
  final int numOfBedrooms;
  final int numOfBathrooms;
  final int discountPrice;

  House copyWith({
    String? name,
    String? location,
    String? ownerName,
    String? imagePath,
    int? measurement,
    int? pricePerNight,
    int? numOfBedrooms,
    int? numOfBathrooms,
    int? discountPrice,
  }) {
    return House(
      name: name ?? this.name,
      location: location ?? this.location,
      ownerName: ownerName ?? this.ownerName,
      imagePath: imagePath ?? this.imagePath,
      measurement: measurement ?? this.measurement,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      numOfBedrooms: numOfBedrooms ?? this.numOfBedrooms,
      numOfBathrooms: numOfBathrooms ?? this.numOfBathrooms,
      discountPrice: discountPrice ?? this.discountPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'location': location,
      'ownerName': ownerName,
      'imagePath': imagePath,
      'measurement': measurement,
      'pricePerNight': pricePerNight,
      'numOfBedrooms': numOfBedrooms,
      'numOfBathrooms': numOfBathrooms,
      'discountPrice': discountPrice,
    };
  }

  factory House.fromMap(Map<String, dynamic> map) {
    return House(
      name: map['name'] as String,
      location: map['location'] as String,
      ownerName: map['ownerName'] as String,
      imagePath: map['imagePath'] as String,
      measurement: map['measurement'] as int,
      pricePerNight: map['pricePerNight'] as int,
      numOfBedrooms: map['numOfBedrooms'] as int,
      numOfBathrooms: map['numOfBathrooms'] as int,
      discountPrice: map['discountPrice'] as int,
    );
  }

  @override
  String toString() {
    return 'House(name: $name, location: $location, ownerName: $ownerName, imagePath: $imagePath, measurement: $measurement, pricePerNight: $pricePerNight, numOfBedrooms: $numOfBedrooms, numOfBathrooms: $numOfBathrooms, discountPrice: $discountPrice)';
  }

  @override
  bool operator ==(covariant House other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.location == location &&
        other.ownerName == ownerName &&
        other.imagePath == imagePath &&
        other.measurement == measurement &&
        other.pricePerNight == pricePerNight &&
        other.numOfBedrooms == numOfBedrooms &&
        other.numOfBathrooms == numOfBathrooms &&
        other.discountPrice == discountPrice;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        location.hashCode ^
        ownerName.hashCode ^
        imagePath.hashCode ^
        measurement.hashCode ^
        pricePerNight.hashCode ^
        numOfBedrooms.hashCode ^
        numOfBathrooms.hashCode ^
        discountPrice.hashCode;
  }
}
