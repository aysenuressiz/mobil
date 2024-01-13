// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            AndroidSmall1(),
          ],
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class AndroidSmall1 extends StatelessWidget {
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
            // ignore: duplicate_ignore, duplicate_ignore
            children: [
              // ignore: prefer_const_constructors
              Positioned(
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
                      image: AssetImage("assets/images/supplynexa.jpeg"),
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
                      MaterialPageRoute(builder: (context) => AndroidSmall2()),
                    );
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
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
                              color: Color.fromARGB(255, 32, 85, 150),
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
              Positioned(
                left: 150, // İstediğiniz konuma göre ayarlayabilirsiniz
                bottom: 10, // İstediğiniz konuma göre ayarlayabilirsiniz
                child: Text(
                  'by GEA',
                  style: TextStyle(
                    color: Colors.grey, // İstediğiniz rengi seçebilirsiniz
                    fontSize: 12, // İstediğiniz font büyüklüğünü seçebilirsiniz
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

// ignore: use_key_in_widget_constructors

// ignore: use_key_in_widget_constructors
class AndroidSmall2 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _AndroidSmall2State createState() => _AndroidSmall2State();
}

class _AndroidSmall2State extends State<AndroidSmall2> {
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
      // ignore: avoid_print
      print('Username or password is empty');
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
                  left: 54,
                  top: 155,
                  child: Container(
                    width: 254,
                    height: 1,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 32, 85, 150)),
                  ),
                ),
                Positioned(
                  left: 53,
                  top: 221,
                  child: Container(
                    width: 254,
                    height: 1,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 32, 85, 150)),
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
                        // ignore: deprecated_member_use
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
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
                  // ignore: sized_box_for_whitespace
                  child: Container(
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
                  // ignore: sized_box_for_whitespace
                  child: Container(
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
                  child: Container(
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

                Positioned(
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

// ignore: use_key_in_widget_constructors
class SignUpScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
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
    Key? key,
    required this.user,
    required this.userSupplies,
  }) : super(key: key);

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
            Text('Sizin Oluşturduğunuz Tedarikler:'),
            Column(
              children: userSupplies.map((supply) {
                return ListTile(
                  title: Text(supply.title),
                  subtitle: Text(supply.description),
                );
              }).toList(),
            ),
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
    Key? key,
    required this.user,
    required this.userApplications,
  }) : super(key: key);

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
            title: Text(supply.title),
            subtitle: Text(supply.description),
            // Diğer bilgileri ekle
          );
        },
      ),
    );
  }
}

class MyNotificationScreen extends StatelessWidget {
  final User user;

  const MyNotificationScreen({
    Key? key,
    required this.user,
    required List<Supply> userSupplies,
  }) : super(key: key);

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
            Text('Bildiimlerim Listesi:'),
            // Başvurularınızın listesini göstermek için gerekli widget'ları ekleyin
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final User user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

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
      title: 'Tedarik 1',
      description: 'Açıklama 1',
      sector: 'Sektor 1',
      createdBy: User(
        username: 'user1',
        email: '',
        imageUrl: 'anonim.png',
      ),
      imageUrl: '',
    ),
    Supply(
      title: 'Tedarik 2',
      description: 'Açıklama 2',
      sector: 'Sektor 2',
      createdBy: User(username: 'user2', email: '', imageUrl: ''),
      imageUrl: 'anonim.png',
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
        builder: (context) => AndroidSmall2(),
      ),
    );
  }

  void _editSupply(Supply supply) async {
    final editedSupply = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditSupplyScreen(initialSupply: supply),
      ),
    );

    if (editedSupply != null) {
      setState(() {
        supplyList.remove(supply);
        supplyList.add(editedSupply);
      });
    }
  }

  void _shareSupply(Supply supply) {
    // Burada tedarik paylaşma işlemlerini gerçekleştirin
    print('Tedarik paylaşma: ${supply.title}');
  }

  // ignore: unused_element
// ignore: unused_element
  void _viewSupplyDetail(Supply supply) {
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
              print('Başvuru eklendi: ${supply.title}');
            });
            Navigator.pop(context); // SupplyDetailScreen'ı kapatın
          },
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
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
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
              title: Text('Bildirimler'),
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
              title: Text('Tedarikler'),
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
              title: Text('Başvurular'),
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
// ...
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                    child: ListTile(
                      title: Text(supply.title),
                      subtitle: Text(supply.description),
                      leading: supply.createdBy == widget.user
                          ? IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                _editSupply(supply);
                              },
                            )
                          : null,
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {
                              _shareSupply(supply);
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SupplyDetailScreen(
                              supply: supply,
                              currentUser: widget.user, // currentUser'ı ekledik
                              onDelete: () => _deleteSupply(supply),
                              onApply: () {
                                setState(() {
                                  userApplications.add(supply);
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        );
                      },
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

  const EditSupplyScreen({Key? key, required this.initialSupply})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EditSupplyScreenState createState() => _EditSupplyScreenState();
}

class _EditSupplyScreenState extends State<EditSupplyScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _sectorController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialSupply.title);
    _descriptionController =
        TextEditingController(text: widget.initialSupply.description);
    _sectorController =
        TextEditingController(text: widget.initialSupply.sector);
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
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _sectorController,
              decoration: const InputDecoration(labelText: 'Sector'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final editedSupply = Supply(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  sector: _sectorController.text,
                  createdBy: widget.initialSupply.createdBy,
                  imageUrl: '',
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
    Key? key,
    required this.user,
    required List<Supply> userSupplies,
  }) : super(key: key);

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
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/anonim.png'),
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text('Merhaba! ${user.email}'), // Kullanıcının resim URL'si
            const SizedBox(height: 20),
            Text('E-posta: ${user.username}!'),

            // Başka kullanıcı bilgilerini buraya ekleyebilirsiniz.
          ],
        ),
      ),
    );
  }
}

class SupplyDetailScreen extends StatelessWidget {
  final Supply supply;
  final void Function() onDelete;
  final void Function() onApply;
  final User currentUser;

  const SupplyDetailScreen({
    Key? key,
    required this.supply,
    required this.currentUser,
    required this.onDelete,
    required this.onApply,
  }) : super(key: key);

  void applyToSupply(Supply supply, User user) {
    // Supply'e başvur işlemleri
  }

  void addApplicationToMyApplications(Supply supply) {
    // Başvurularım listesine ekleme işlemleri
  }

  void handleApply() {
    applyToSupply(supply, currentUser);
    addApplicationToMyApplications(supply);
    // Diğer işlemler
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
            Text('Description: ${supply.description}'),
            const SizedBox(height: 10),
            Text('Sector: ${supply.sector}'),
            const SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: onDelete,
                  child: const Text('Delete Supply'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: handleApply,
                  child: const Text('Apply'),
                ),
              ],
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
    Key? key,
    required this.onSupplyAdded,
    required this.user,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddSupplyScreenState createState() => _AddSupplyScreenState();
}

class _AddSupplyScreenState extends State<AddSupplyScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _sectorController = TextEditingController();

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
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _sectorController,
              decoration: const InputDecoration(labelText: 'Sector'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add supply logic here
                final newSupply = Supply(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  sector: _sectorController.text,
                  createdBy: widget.user,
                  imageUrl: '',
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

  Supply({
    required this.title,
    required this.description,
    required this.sector,
    required this.createdBy,
    required this.imageUrl,
  });
}
