class Guest {
  String guestFullName;
  String contactPhoneNumber;

  Guest(this.guestFullName, this.contactPhoneNumber);
}

class Room {
  int roomNumber;
  String roomCategory;
  double costPerNight;
  bool isOccupied;

  Room(this.roomNumber, this.roomCategory, this.costPerNight, {this.isOccupied = false});
}

class Reservation {
  Guest registeredGuest;
  Room assignedRoom;
  int totalStayNights;

  Reservation(this.registeredGuest, this.assignedRoom, this.totalStayNights) {
    assignedRoom.isOccupied = true;
  }

  double calculateTotalRent() {
    return assignedRoom.costPerNight * totalStayNights;
  }

  void printInvoice() {
    print("=== Hotel Reservation Invoice ===");
    print("Guest: ${registeredGuest.guestFullName} (${registeredGuest.contactPhoneNumber})");
    print("Room: #${assignedRoom.roomNumber} - Category: ${assignedRoom.roomCategory}");
    print("Stay Duration: $totalStayNights nights");
    print("Total Charges: \$${calculateTotalRent().toStringAsFixed(2)}");
    print("Status: Confirmed\n");
  }
}

void main() {
  Guest visitor = Guest("Parag Kishor", "+8801711223344");
  Room luxuryRoom = Room(302, "Deluxe King Bed", 120.0);

  Reservation booking = Reservation(visitor, luxuryRoom, 3);
  booking.printInvoice();
}
