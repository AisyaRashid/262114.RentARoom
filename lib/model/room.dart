class Room {
  String title;
  String address;
  String imageUrl;

  Room(this.title, this.address, this.imageUrl);

  static List<Room> generateRecommended() {
    return [
      Room('Kiara Residence 2', 'Mount Kiara, Kuala Lumpur',
          'assets/images/room1.png'),
      Room('SuriaMas', 'Old Klang Road, Kuala Lumpur',
          'assets/images/room1.png'),
    ];
  }

  static List<Room> generateBestOffer() {
    return [
      Room('Kiara Residence 2', 'Mount Kiara, Kuala Lumpur',
          'assets/images/room1.png'),
      Room('SuriaMas', 'Old Klang Road, Kuala Lumpur',
          'assets/images/room1.png'),
    ];
  }
}
