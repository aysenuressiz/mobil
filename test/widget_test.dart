import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:mobil/main.dart';

void main() {
  testWidgets('FigmaToCodeApp widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: FigmaToCodeApp()));

    expect(find.byType(FigmaToCodeApp), findsOneWidget);

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.byType(ListView), findsOneWidget);

    expect(find.byType(AndroidSmall1), findsOneWidget);

    expect(find.text('SupplyNexa'), findsOneWidget);

    expect(find.byType(Container), findsWidgets);

    expect(find.byType(GestureDetector), findsOneWidget);

    expect(find.text('Get Started'), findsOneWidget);
  });

  testWidgets('AndroidSmall1 widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AndroidSmall1()));

    expect(find.byType(AndroidSmall1), findsOneWidget);

    expect(find.text('SupplyNexa'), findsOneWidget);

    expect(find.widgetWithText(GestureDetector, 'Get Started'), findsOneWidget);

    expect(find.text('by GEA'), findsOneWidget);
  });

  testWidgets('AndroidSmall2 widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AndroidSmall2()));

    expect(find.byType(AndroidSmall2), findsOneWidget);

    expect(find.text('Login Now'), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);

    expect(find.widgetWithText(GestureDetector, 'Sign Up'), findsOneWidget);

    expect(find.text('Email'), findsOneWidget);

    expect(find.text('Password'), findsOneWidget);

    expect(find.widgetWithText(TextField, 'Enter your email'), findsOneWidget);

    expect(
        find.widgetWithText(TextField, 'Enter your password'), findsOneWidget);

    expect(find.text('Don’t have an account ?'), findsOneWidget);
  });

  testWidgets('SignUpScreen widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SignUpScreen()));

    await tester.tap(find.text('Sign Up'));

    await tester.pumpAndSettle(); // Ekran geçişini bekler

    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('MySuppliesScreen widget test', (WidgetTester tester) async {
    User testUser =
        User(username: 'test_user', email: 'test@example.com', imageUrl: '');

    List<Supply> testSupplies = [];

    await tester.pumpWidget(
      MaterialApp(
        home: MySuppliesScreen(
          user: testUser,
          userSupplies: testSupplies,
        ),
      ),
    );

    expect(find.text('Sizin Oluşturduğunuz Tedarikler:'), findsOneWidget);

    for (Supply supply in testSupplies) {
      expect(find.text(supply.title), findsOneWidget);

      expect(find.text(supply.description), findsOneWidget);
    }
  });

  testWidgets('MyApplicationsScreen widget test', (WidgetTester tester) async {
    User testUser =
        User(username: 'test_user', email: 'test@example.com', imageUrl: '');

    List<Supply> testApplications = [];

    await tester.pumpWidget(
      MaterialApp(
        home: MyApplicationsScreen(
          user: testUser,
          userApplications: testApplications,
        ),
      ),
    );

    expect(find.text('Başvurularım'), findsOneWidget);

    for (Supply application in testApplications) {
      expect(find.text(application.title), findsOneWidget);

      expect(find.text(application.description), findsOneWidget);
    }
  });

  testWidgets('MyNotificationScreen widget test', (WidgetTester tester) async {
    User testUser =
        User(username: 'test_user', email: 'test@example.com', imageUrl: '');

    List<Supply> testUserSupplies = [];

    await tester.pumpWidget(
      MaterialApp(
        home: MyNotificationScreen(
          user: testUser,
          userSupplies: testUserSupplies,
        ),
      ),
    );

    expect(find.text('Bildirimlerim'), findsOneWidget);

    expect(find.text('Merhaba, test_user!'), findsOneWidget);

    expect(find.text('Bildirimlerim Listesi:'), findsOneWidget);

    for (Supply notification in testUserSupplies) {
      expect(find.text(notification.title), findsOneWidget);

      expect(find.text(notification.description), findsOneWidget);
    }
  });

  testWidgets('HomeScreen widget test', (WidgetTester tester) async {
    User testUser =
        User(username: 'test_user', email: 'test@example.com', imageUrl: '');

    List<Supply> testSupplyList = [];

    await tester.pumpWidget(
      MaterialApp(
        home: HomeScreen(
          user: testUser,
        ),
      ),
    );

    expect(find.text('Ana Akış'), findsOneWidget);

    expect(find.text('Merhaba, ${testUser.username}!'), findsOneWidget);

    for (Supply testSupply in testSupplyList) {
      expect(find.text(testSupply.title), findsOneWidget);

      expect(find.text(testSupply.description), findsOneWidget);
    }

    await tester.tap(find.byIcon(Icons.add));

    await tester.pumpAndSettle(); // Ekran geçişini bekler

    expect(find.text('Add Supply Screen'), findsOneWidget);

    expect(find.text('Add Supply Screen'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_back));

    await tester.pumpAndSettle();

    expect(find.text('Ana Akış'), findsOneWidget);
  });

  testWidgets('EditSupplyScreen UI Test', (WidgetTester tester) async {
    final supply = Supply(
      title: 'Initial Title',
      description: 'Initial Description',
      sector: 'Initial Sector',
      createdBy: User(username: 'user1', email: '', imageUrl: ''),
      imageUrl: 'anonim.jpeg',
      imageFileName: '',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: EditSupplyScreen(initialSupply: supply),
      ),
    );

    expect(find.text('Tedarik Düzenle'), findsOneWidget);

    expect(find.widgetWithText(TextField, 'Initial Title'), findsOneWidget);

    expect(
        find.widgetWithText(TextField, 'Initial Description'), findsOneWidget);

    expect(find.widgetWithText(TextField, 'Initial Sector'), findsOneWidget);

    expect(find.byIcon(Icons.drive_folder_upload), findsOneWidget);

    await tester.tap(find.text('Kaydet'));

    await tester.pumpAndSettle();

    expect(find.byType(EditSupplyScreen), findsNothing);
  });

  testWidgets('ProfileScreen UI Test', (WidgetTester tester) async {
    final user =
        User(username: 'test_user', email: 'test@example.com', imageUrl: '');

    final List<Supply> userSupplies = []; // İlgili kullanıcının tedarikleri

    await tester.pumpWidget(
      MaterialApp(
        home: ProfileScreen(user: user, userSupplies: userSupplies),
      ),
    );

    expect(find.text('Profil Ekranı'), findsOneWidget);

    expect(find.byType(CircleAvatar), findsOneWidget);

    expect(find.text('Merhaba! test@example.com'), findsOneWidget);

    expect(find.text('E-posta: test_user!'), findsOneWidget);
  });
}

// ignore: non_constant_identifier_names
SignUpScreen() {}
