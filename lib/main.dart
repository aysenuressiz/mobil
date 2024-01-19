import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void addDataToFirestore() {
  FirebaseFirestore.instance.collection('your_collection').add({
    'field1': 'value1',
    'field2': 'value2',
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: ListView(
          children: const [
            AndroidSmall1(),
          ],
        ),
      ),
    );
  }
}

// İlk ekranın widget'ı
class AndroidSmall1 extends StatelessWidget {
  const AndroidSmall1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 640,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: -27,
                top: 92,
                child: SizedBox(
                  width: 414,
                  height: 98,
                  child: Text(
                    'SupplyNexa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0F5B7C),
                      fontSize: 48,
                      fontFamily: 'Keania One',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 200,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/supplynexa.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 506,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AndroidSmall2()),
                    );
                  },
                  child: SizedBox(
                    width: 249,
                    height: 45,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 249,
                            height: 45,
                            decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 32, 85, 150),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 73,
                          top: 10,
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Color.fromARGB(255, 186, 218, 230),
                              fontSize: 20,
                              fontFamily: 'Ibarra Real Nova',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 150,
                bottom: 10,
                child: Text(
                  'by GEA',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// İkinci ekranın widget'ı
class AndroidSmall2 extends StatefulWidget {
  const AndroidSmall2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AndroidSmall2State createState() => _AndroidSmall2State();
}

class _AndroidSmall2State extends State<AndroidSmall2> {
  var logger = Logger();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String getUsernameFromLoginForm(String value) {
    // Kullanıcı adını alacak işlemleri buraya ekleyin
    return value;
  }

  String getEmailFromLoginForm(String value) {
    // E-posta bilgisini alacak işlemleri buraya ekleyin
    return value;
  }

  // Giriş yapma işlevi
  void _login() {
    // Kullanıcı adını ve şifreyi al
    String usernameFromLogin =
        getUsernameFromLoginForm(_emailController.text.trim());
    String passwordFromLogin =
        getPasswordFromLoginForm(_passwordController.text);

    if (usernameFromLogin.isNotEmpty && passwordFromLogin.isNotEmpty) {
      // Kullanıcı nesnesini oluştururken kullanıcı adını ve şifreyi geçirin
      User loggedInUser = User(
        username: usernameFromLogin,
        email:
            '', // E-posta bilgisini girmek istemiyorsanız boş bırakabilirsiniz
        imageUrl: '',
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(user: loggedInUser),
        ),
      );
    } else {
      logger.i('Username or password is empty');
    }
  }

  String getPasswordFromLoginForm(String value) {
    // Şifreyi alacak işlemleri buraya ekleyin
    return value;
  }

  void _signUp() {
    // SignUpScreen ekranına geçiş
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 360,
            height: 640,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                const Positioned(
                  left: 101,
                  top: 49,
                  child: Text(
                    'Login Now',
                    style: TextStyle(
                      color: Color.fromARGB(255, 32, 85, 150),
                      fontSize: 32,
                      fontFamily: 'Ibarra Real Nova',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),

                Positioned(
                  left: 55,
                  top: 260,
                  child: Container(
                    width: 249,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 32, 85, 150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Ibarra Real Nova',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 55,
                  top: 519,
                  child: SizedBox(
                    width: 249,
                    height: 35,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 249,
                            height: 35,
                            decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 32, 85, 150),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 89,
                          top: 5,
                          child: GestureDetector(
                            onTap: _signUp,
                            child: const Text(
                              'Sign Up',
                              semanticsLabel: 'Sign Up',
                              style: TextStyle(
                                color: Color.fromARGB(255, 186, 218, 230),
                                fontSize: 20,
                                fontFamily: 'Ibarra Real Nova',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 55,
                  top: 406,
                  child: Container(
                    width: 249,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.6200000047683716),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 59,
                  top: 132,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Ibarra Real Nova',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),

                const Positioned(
                  left: 59,
                  top: 199,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Ibarra Real Nova',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                // Email input field
                Positioned(
                  left: 55,
                  top: 150,
                  child: SizedBox(
                    width: 249,
                    height: 35,
                    child: TextField(
                      controller: _emailController,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Ibarra Real Nova',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter your email',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),

                // Password input field
                Positioned(
                  left: 55,
                  top: 217,
                  child: SizedBox(
                    width: 249,
                    height: 35,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Ibarra Real Nova',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter your password',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),

                const Positioned(
                  left: 107,
                  top: 472,
                  child: Text(
                    'Don’t have an account ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Ibarra Real Nova',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 95,
                  top: 361,
                  child: Container(
                    width: 16,
                    height: 16,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(children: []),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpScreen({super.key});

  void _signUp(BuildContext context) {
    String email = _emailController.text.trim();
    String username = _usernameController.text.trim();
    // ignore: unused_local_variable
    String password = _passwordController.text;

    // Burada email, username ve password kullanarak yeni bir kullanıcı kaydı yapabilirsiniz.
    // Kayıt işlemlerini uygulamanıza uygun bir şekilde gerçekleştirmeniz gerekecektir.

    // Örnek olarak, kayıt başarılı olduğunda Ana Akış ekranına yönlendirilebilir.
    User newUser = User(username: username, email: email, imageUrl: '');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(user: newUser),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black), // Email metin rengi
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.black), // Alt çizgi rengi
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.black), //  metin rengi
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.black), // Alt çizgi rengi
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black), // metin rengi
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.black), // Alt çizgi rengi
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 32, 85, 150),
              ),
              onPressed: () => _signUp(context),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

// Tedariklerim sayfası
class MySuppliesScreen extends StatelessWidget {
  final User user;
  final List<Supply> userSupplies;

  const MySuppliesScreen({
    super.key,
    required this.user,
    required this.userSupplies,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tedariklerim'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 2),
            const Text(
              'Sizin Oluşturduğunuz Tedarikler:',
              style: TextStyle(
                color: Colors.black, // Eklenen tedarik yazı rengi
                fontSize: 16, // Eklenen tedarik yazı boyutu
              ),
            ),
            const SizedBox(height: 10),
            // Burada eklenen tedariklerin listesi yer alabilir

            Column(
              children: userSupplies.map((supply) {
                return ListTile(
                  title: Text(
                    supply.title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(supply.description),
                );
              }).toList(),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

// Başvurularım sayfası
class MyApplicationsScreen extends StatelessWidget {
  final User user;
  final List<Supply> userApplications;

  const MyApplicationsScreen({
    super.key,
    required this.user,
    required this.userApplications,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Başvurularım'),
      ),
      body: ListView.builder(
        itemCount: userApplications.length,
        itemBuilder: (context, index) {
          final supply = userApplications[index];
          return ListTile(
            title: Text(
              supply.title,
              style: const TextStyle(
                color: Colors.blue, // İstediğiniz renge güncelleyebilirsiniz
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              supply.description,
              style: const TextStyle(
                color: Colors.black, // İstediğiniz renge güncelleyebilirsiniz
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyNotificationScreen extends StatelessWidget {
  final User user;

  const MyNotificationScreen({
    super.key,
    required this.user,
    required List<Supply> userSupplies,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bildirimlerim'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Merhaba, ${user.username}!'),
            const SizedBox(height: 20),
            const Text('Bildiimlerim Listesi:'),
            // Başvurularınızın listesini göstermek için gerekli widget'ları ekleyin
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final User user;

  const HomeScreen({super.key, required this.user});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

List<Supply> userApplications = []; // Kullanıcının başvurularını tutan liste

class User {
  final String username;
  final String email;
  final String imageUrl;

  User({
    required this.username,
    required this.email,
    required this.imageUrl,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Supply> supplyList = [
    Supply(
      title: 'Akü',
      description: '12 V 200 Amper Deep Cycle Marin Bakımsız Akü',
      sector: 'OTOMOTİV',
      createdBy: User(username: 'user1', email: '', imageUrl: ''),
      imageUrl: 'images/anonim.jpeg',
      imageFileName: 'akü.jpeg',
      imageHeight: 300.0, // Özel yükseklik değeri
      imageWidth: 300.0, // Özel genişlik değeri
    ),
    Supply(
      title: 'Dokunmatik Radyo',
      description:
          'Kablosuz 7 Inç Dokunmatik Araç Radyosu 32 GB Rom Android Oynatıcı ',
      sector: 'OTOMOTİV',
      createdBy: User(username: 'user2', email: '', imageUrl: ''),
      imageUrl: 'images/anonim.jpeg',
      imageFileName: 'radyo1.jpg',
      imageHeight: 300.0, // Özel yükseklik değeri
      imageWidth: 300.0, // Özel genişlik değeri
    ),
    Supply(
      title: 'Kaporta',
      description: 'Sıfır',
      sector: 'OTOMOTİV',
      createdBy: User(username: 'user3', email: '', imageUrl: ''),
      imageUrl: 'images/anonim.jpeg',
      imageFileName: 'kaporta.jpg',
      imageHeight: 300.0, // Özel yükseklik değeri
      imageWidth: 300.0, // Özel genişlik değeri
    ),
    Supply(
      title: 'Lastik',
      description: 'Açıklama 4',
      sector: 'OTOMOTİV',
      createdBy: User(username: 'user3', email: '', imageUrl: ''),
      imageUrl: 'anonim.jpeg',
      imageFileName: 'tekerlek.jpg',
      imageHeight: 300.0, // Özel yükseklik değeri
      imageWidth: 300.0, // Özel genişlik değeri
    ),
    Supply(
      title: 'Dikiz Aynası',
      description: 'Açıklama 5',
      sector: 'OTOMOTİV',
      createdBy: User(username: 'user3', email: '', imageUrl: ''),
      imageUrl: 'images/anonim.jpeg',
      imageFileName: 'ayna.jpg',
      imageHeight: 300.0, // Özel yükseklik değeri
      imageWidth: 300.0, // Özel genişlik değeri
    ),
  ];

  String searchQuery = '';
  List<Supply> userApplications = [];

  void _deleteSupply(Supply supply) {
    if (supply.createdBy == widget.user) {
      setState(() {
        supplyList.remove(supply);
      });
    }
  }

  void _logout() {
    // Kullanıcının oturumunu sonlandırma işlemi
    // Bu kısma, kullanıcının oturumunu sonlandırdığınız bir kodu ekleyin.

    // Örneğin, oturumu sonlandırdıktan sonra giriş ekranına geri dönebilirsiniz.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AndroidSmall2(),
      ),
    );
  }

  void _editSupply(Supply supply) async {
    // Kullanıcının eklediği tedarikleri kontrol et
    if (supply.createdBy == widget.user) {
      final editedSupply = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditSupplyScreen(initialSupply: supply),
        ),
      );

      if (editedSupply != null) {
        setState(() {
          // Tedarik öğesini güncelleme işlemleri burada yapılır
          // Sadece kullanıcının eklediği tedarikleri güncelle
          if (supplyList.contains(supply)) {
            supplyList.remove(supply);
            supplyList.add(editedSupply);
          }
        });
      }
    }
  }

  void _shareSupply(Supply supply) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.green),
              title: const Text('Whatsapp'),
              onTap: () {
                Navigator.pop(context);
                // Mesajla işlemini gerçekleştir
                _shareViaMessage(supply);
              },
            ),
            ListTile(
              leading: const Icon(Icons.work, color: Colors.blue),
              title: const Text('JOBSocial'),
              onTap: () {
                Navigator.pop(context);
                // Mesajla işlemini gerçekleştir
                _shareViaMessage(supply);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              onTap: () {
                Navigator.pop(context);
                // Mesajla işlemini gerçekleştir
                _shareViaMessage(supply);
              },
            ),
            ListTile(
              leading: const Icon(Icons.copy),
              title: const Text('Bağlantı Kopyala'),
              onTap: () {
                Navigator.pop(context);
                // Bağlantıyı kopyala işlemini gerçekleştir
                _copyLink(supply);
              },
            ),
            // İstediğiniz diğer paylaşma seçeneklerini ekleyebilirsiniz
          ],
        );
      },
    );
  }

  void _shareViaMessage(Supply supply) {
    var logger = Logger();
    // Mesajla paylaşma işlemleri
    logger.i('Mesajla paylaşma: ${supply.title}');
  }

  void _copyLink(Supply supply) {
    var logger = Logger();
    // Bağlantıyı kopyala işlemleri
    logger.i('Bağlantı kopyalandı: ${supply.title}');
  }

  // ignore: unused_element
  void _viewSupplyDetail(Supply supply) {
    var logger = Logger();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SupplyDetailScreen(
          supply: supply,
          currentUser: widget.user,
          onDelete: () => _deleteSupply(supply),
          onApply: () {
            setState(() {
              // Kullanıcının başvurularını tuttuğunuz listeye supply ekleyin
              userApplications.add(supply);
              logger.i('Başvuru eklendi: ${supply.title}');
            });
            Navigator.pop(context); // SupplyDetailScreen'ı kapatın
          },
          context: context,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Akış'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(
                    user: widget.user,
                    userSupplies: supplyList
                        .where((supply) => supply.createdBy == widget.user)
                        .toList(),
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: _logout,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            // ...
            ListTile(
              title: const Text('Bildirimler'),
              onTap: () {
                Navigator.pop(context); // Menüyü kapat
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyNotificationScreen(
                      user: widget.user,
                      userSupplies: supplyList
                          .where((supply) => supply.createdBy == widget.user)
                          .toList(),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Tedariklerim'),
              onTap: () {
                Navigator.pop(context); // Menüyü kapat
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySuppliesScreen(
                      user: widget.user,
                      userSupplies: supplyList
                          .where((supply) => supply.createdBy == widget.user)
                          .toList(),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Başvurularım'),
              onTap: () {
                Navigator.pop(context); // Menüyü kapat
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApplicationsScreen(
                      user: widget.user,
                      userApplications: userApplications,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
              decoration: const InputDecoration(
                hintText: 'Tedarik ara...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: searchQuery.isEmpty
                  ? supplyList.length
                  : supplyList
                      .where((supply) =>
                          supply.title.toLowerCase().contains(searchQuery))
                      .length,
              itemBuilder: (context, index) {
                final supply = searchQuery.isEmpty
                    ? supplyList[index]
                    : supplyList
                        .where((supply) =>
                            supply.title.toLowerCase().contains(searchQuery))
                        .toList()[index];
                // ignore: unused_local_variable
                final imageUrl = supply.imageUrl.isNotEmpty
                    ? supply.imageUrl
                    : 'images/anonim.jpeg';
                return Dismissible(
                  key: Key(supply.title),
                  onDismissed: (direction) {
                    _deleteSupply(supply);
                  },
                  background: Container(
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  confirmDismiss: (direction) async {
                    if (supply.createdBy == widget.user) {
                      return true;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Bu tedariki silemezsiniz."),
                        ),
                      );
                      return false;
                    }
                  },
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: [
                        Text(
                          supply.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        if (supply.imageUrl.isNotEmpty)
                          Image.asset(
                            'images/${supply.imageFileName}', // supply.imageFileName veya istediğiniz uygun veriyi kullanmalısınız
                            height:
                                100, // İstenilen yüksekliği ayarlayabilirsiniz
                            width: double
                                .infinity, // Genişliği ekrana sığacak şekilde ayarlar
                            fit: BoxFit
                                .cover, // Resmi uygun şekilde boyutlandırır
                          ),
                        ListTile(
                          leading: supply.imageUrl.isNotEmpty
                              ? const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/anonim.jpeg'),
                                )
                              : null,
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  _shareSupply(supply);
                                },
                                iconSize: 16,
                              ),
                              if (supply.createdBy == widget.user)
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {
                                    _editSupply(supply);
                                  },
                                  iconSize: 16,
                                ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SupplyDetailScreen(
                                  supply: supply,
                                  currentUser: widget.user,
                                  onDelete: () => _deleteSupply(supply),
                                  onApply: () {
                                    setState(() {
                                      userApplications.add(supply);
                                    });
                                    Navigator.pop(context);
                                  },
                                  context: context,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newSupply = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddSupplyScreen(
                onSupplyAdded: (supply) {
                  setState(() {
                    supplyList.add(supply);
                  });
                },
                user: widget.user,
              ),
            ),
          );

          if (newSupply != null) {
            setState(() {
              supplyList.add(newSupply);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class EditSupplyScreen extends StatefulWidget {
  final Supply initialSupply;

  const EditSupplyScreen({super.key, required this.initialSupply});

  @override
  // ignore: library_private_types_in_public_api
  _EditSupplyScreenState createState() => _EditSupplyScreenState();
}

class _EditSupplyScreenState extends State<EditSupplyScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _sectorController;
  XFile? _selectedImage;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialSupply.title);
    _descriptionController =
        TextEditingController(text: widget.initialSupply.description);
    _sectorController =
        TextEditingController(text: widget.initialSupply.sector);
  }

  Future<void> _getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tedarik Düzenle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(color: Colors.black), // Label rengi
              ),
              style: const TextStyle(color: Colors.black), // Metin rengi
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.black), // Label rengi
              ),
              style: const TextStyle(color: Colors.black), // Metin rengi
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _sectorController,
              decoration: const InputDecoration(
                labelText: 'Sector',
                labelStyle: TextStyle(color: Colors.black), // Label rengi
              ),
              style: const TextStyle(color: Colors.black), // Metin rengi
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 10),

            // Seçilen fotoğrafın önizlemesi
            _selectedImage != null
                ? Image.file(File(_selectedImage!.path))
                : const SizedBox.shrink(),

            const SizedBox(height: 20),

            // Dosya ekleme ikonu
            InkWell(
              onTap: _getImage,
              child: const Icon(
                Icons.drive_folder_upload,
                size: 40,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final editedSupply = Supply(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  sector: _sectorController.text,
                  createdBy: widget.initialSupply.createdBy,
                  imageUrl: 'images/anonim.jpeg',
                  imageFileName: '',
                );

                Navigator.pop(context, editedSupply);
              },
              child: const Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({
    super.key,
    required this.user,
    required List<Supply> userSupplies,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Ekranı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/anonim.jpeg'),
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text(
              'Merhaba! ${user.email}',
              style: const TextStyle(color: Colors.black), // Metin rengi
            ),
            const SizedBox(height: 20),
            Text(
              'E-posta: ${user.username}!',
              style: const TextStyle(
                  color: Colors.black), // Metin rengini buradan ayarlayın
            ),
            // Başka kullanıcı bilgilerini buraya ekleyebilirsiniz.
          ],
        ),
      ),
    );
  }
}

class SupplyDetailScreen extends StatelessWidget {
  final BuildContext context;
  final Supply supply;
  final void Function() onDelete;
  final void Function() onApply;
  final User currentUser;

  const SupplyDetailScreen({
    super.key,
    required this.context,
    required this.supply,
    required this.currentUser,
    required this.onDelete,
    required this.onApply,
  });

  void applyToSupply(Supply supply, User user) {
    // Supply'e başvur işlemleri
  }

  void addApplicationToMyApplications(Supply supply) {
    // Başvurularım listesine ekleme işlemleri
    onApply();
  }

  void handleApply() {
    applyToSupply(supply, currentUser);
    addApplicationToMyApplications(supply);

    // Diğer işlemler
    _showApplicationConfirmation();
    // Diğer işlemler
  }

  void _showApplicationConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Başvuru Onayı'),
          content: Text(
              'Başvurunuz başarıyla kaydedildi:\nBaşvurulan tedarik: ${supply.title}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Tamam'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(supply.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/${supply.imageFileName}',
              height: supply.imageHeight,
              width: supply.imageWidth,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),
            Text(
              'Description: ${supply.description}',
              style: const TextStyle(color: Colors.black), // Metin rengi
            ),
            const SizedBox(height: 10),
            Text(
              'Sector: ${supply.sector}',
              style: const TextStyle(
                  color: Colors.black), // Metin rengini burada ayarla
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: handleApply,
                  child: const Text('Apply'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Oluşturan kullanıcının profil resmini görüntüle
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/anonim.jpeg'),
              ),
              title: Text(
                'Oluşturan Kullanıcı: ${supply.createdBy.username}',
                style: const TextStyle(
                    color: Colors.black), // Metin rengini burada ayarla
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      user: supply.createdBy,
                      userSupplies: const [],
                      // İstediğiniz diğer bilgileri de buraya ekleyebilirsiniz
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AddSupplyScreen extends StatefulWidget {
  final void Function(dynamic supply) onSupplyAdded;
  final User user;

  const AddSupplyScreen({
    super.key,
    required this.onSupplyAdded,
    required this.user,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AddSupplyScreenState createState() => _AddSupplyScreenState();
}

class _AddSupplyScreenState extends State<AddSupplyScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _sectorController = TextEditingController();
  XFile? _selectedImage;

  Future<void> _getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yeni Tedarik Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(color: Colors.black), // Başlık rengi
              ),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.black), // Başlık rengi
              ),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _sectorController,
              decoration: const InputDecoration(
                labelText: 'Sector',
                labelStyle: TextStyle(color: Colors.black), // Başlık rengi
              ),
              style: const TextStyle(color: Colors.black),
            ),

            // Seçilen fotoğrafın önizlemesi
            _selectedImage != null
                ? Image.file(File(_selectedImage!.path))
                : const SizedBox.shrink(),

            const SizedBox(height: 20),
            const SizedBox(height: 10),

            // Dosya ekleme ikonu
            InkWell(
              onTap: _getImage,
              child: const Icon(
                Icons.drive_folder_upload,
                size: 40,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add supply logic here
                final newSupply = Supply(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  sector: _sectorController.text,
                  createdBy: widget.user,
                  imageUrl: _selectedImage?.path ?? '',
                  imageFileName: '',
                );

                widget.onSupplyAdded(newSupply);
                Navigator.pop(context);
              },
              child: const Text('Add Supply'),
            ),
          ],
        ),
      ),
    );
  }
}

class Supply {
  final String title;
  final String description;
  final String sector;
  final User createdBy;
  final String imageUrl;
  final String imageFileName;
  final double imageHeight;
  final double imageWidth;

  Supply({
    required this.title,
    required this.description,
    required this.sector,
    required this.createdBy,
    required this.imageUrl,
    required this.imageFileName,
    this.imageHeight = 200.0,
    this.imageWidth = double.infinity,
  });
}
