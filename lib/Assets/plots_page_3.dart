import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlotScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlotScreen extends StatelessWidget {
  const PlotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PLOTS',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Plot A'),
              Tab(text: 'Plot B'),
              Tab(text: 'Plot C'),
              Tab(text: 'Plot D'),
            ],
          ),
          backgroundColor: const Color(0xFF1D3557),
        ),
        body: TabBarView(
          children: List.generate(4, (index) {
            return GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange, width: 1.5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.settings, size: 40, color: Colors.black),
                      const SizedBox(height: 8),
                      Text(
                        'Pile ${index + 1}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        index % 2 == 0
                            ? 'Specification\ninstalled'
                            : 'Specification\nnot installed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: index % 2 == 0 ? Colors.green : Colors.red,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward,
                        size: 24,
                        color: Colors.orange,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                );
              },
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF1D3557),
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white),
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFF002E5E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: const Icon(Icons.add, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon:
                    const Icon(Icons.chat_bubble_outline, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text("Profile Page Content"),
      ),
    );
  }
}
