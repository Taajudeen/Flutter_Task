import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                  color: Color(0xFF183A5B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        hintText: "Enter your Mail ID/Phone no",
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        hintText: "Enter Password",
                        icon: Icons.lock_outline,
                        isPassword: true,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                activeColor:
                                    const Color.fromARGB(255, 179, 178, 176),
                              ),
                              const Text(
                                "Remember me",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 100,
                            ),
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Don’t have an account? Sign Up",
                            style: TextStyle(
                              color: Color.fromARGB(255, 215, 202, 165),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Column(
              children: [
                SizedBox(height: 60),
                Center(
                  child: Text(
                    "brickable",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 45, 67),
                      shadows: [
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2.0,
                          color: Colors.black26,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    "We build your dreams",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 235, 177, 5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(icon, color: const Color.fromARGB(255, 50, 50, 50)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
