class Notification {
  String notificationTitle;

  Notification(this.notificationTitle);

  String displayNotification() {
    return "Base Notification: $notificationTitle";
  }
}

class EmailNotification extends Notification {
  String receiverEmail;

  EmailNotification(String notificationTitle, this.receiverEmail)
      : super(notificationTitle);

  @override
  String displayNotification() {
    return "Email sent to $receiverEmail -> Subject: $notificationTitle";
  }
}

class SMSNotification extends Notification {
  String receiverPhone;

  SMSNotification(String notificationTitle, this.receiverPhone)
      : super(notificationTitle);

  @override
  String displayNotification() {
    return "SMS sent to $receiverPhone -> Message: $notificationTitle";
  }
}

void main() {
  Notification mailAlert = EmailNotification("Exam Schedule Out", "student@leading.edu.bd");
  Notification phoneAlert = SMSNotification("OTP: 4920", "+8801700000000");

  print(mailAlert.displayNotification());
  print(phoneAlert.displayNotification());
}
