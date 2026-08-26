// SWE 463 - Mobile Application Development
// Demo 1 - Build Your First Flutter App
// Student: Moath Mahmoud Haimour
//
// Checkpoints 1-5 are preserved below as line comments to show the
// development sequence. Only Checkpoint 6 is active code.

// ==================== CHECKPOINT 1 - COMMENTED ====================
// Goal: Minimal MaterialApp that displays my name using only Text.
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     const MaterialApp(
//       home: Text('My name is Moath Mahmoud Haimour'),
//     ),
//   );
// }

// ==================== CHECKPOINT 2 - COMMENTED ====================
// Goal: Add a Scaffold and centre the text in its body.
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             'Welcome to SWE 463',
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// ==================== CHECKPOINT 3 - COMMENTED ====================
// Goal: Extend the Scaffold with an AppBar, a slide-out Drawer and a body.
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('SWE 463 - Demo 1'),
//           backgroundColor: Colors.indigo,
//           foregroundColor: Colors.white,
//         ),
//         drawer: const Drawer(
//           child: SafeArea(
//             child: Column(
//               children: [
//                 DrawerHeader(
//                   child: Center(
//                     child: Text(
//                       'Demo Menu',
//                       style: TextStyle(fontSize: 24),
//                     ),
//                   ),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.home),
//                   title: Text('Home'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: const Center(
//           child: Text(
//             'Open the drawer from the menu icon',
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// ==================== CHECKPOINT 4 - COMMENTED ====================
// Goal: Move the widget tree into a reusable StatelessWidget named MyApp,
// then prove hot reload works by changing the body text.
// A hot restart (R) was needed first because main() and the root widget
// passed to runApp() both changed.
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('SWE 463 - Demo 1'),
//         ),
//         drawer: const Drawer(
//           child: SafeArea(
//             child: ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//             ),
//           ),
//         ),
//         body: const Center(
//           child: Text(
//             // Started as 'MyApp is running', then changed to the line below
//             // and saved with hot reload (r) - no full restart needed.
//             'Hot reload is working!',
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ==================== CHECKPOINT 5 - COMMENTED ====================
// Goal: Define HomePage and LoginPage as two separate screen classes, but
// show only HomePage. LoginPage exists in the code and is not reachable yet.
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'SWE 463 Demo 1',
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: const Center(
//         child: Text(
//           'This is the Home Page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Page'),
//       ),
//       body: const Center(
//         child: Text(
//           'This is the Login Page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

// ==================== CHECKPOINT 6 - FINAL ACTIVE CODE ====================
// Goal: Open LoginPage from HomePage with Navigator.push(), then return to
// HomePage with Navigator.pop().

// Makes Flutter's Material Design widgets available to this file.
import 'package:flutter/material.dart';

// The entry point where Dart starts the application.
void main() {
  // Attaches MyApp to the screen as the root of the widget tree.
  runApp(const MyApp());
}

// The root application class.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SWE 463 Demo 1',
      // HomePage is the first screen on the navigation stack.
      home: const HomePage(),
    );
  }
}

// First screen: shows my name, a Drawer, and a button that pushes LoginPage.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // drawer is a direct property of this Scaffold, so the AppBar
      // automatically shows the menu icon that opens it.
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'Demo Menu',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                // The Drawer is itself a route, so pop() closes it.
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'My name is Moath Mahmoud Haimour',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // push() adds LoginPage on top of the navigation stack.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Open Login Page'),
            ),
          ],
        ),
      ),
    );
  }
}

// Second screen: reached by Navigator.push, left by Navigator.pop.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the Login Page',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // pop() removes this route and returns to HomePage.
                // The AppBar back arrow does exactly the same thing.
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
