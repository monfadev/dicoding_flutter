part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController usernameController = TextEditingController();

  bool _isSignIn = false;

  bool _isUsernameValid = false;

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 70, bottom: 16),
                        child: Image.asset(
                          "assets/images/transjakarta.png",
                          scale: 4,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: greyColor, width: 0.2),
                        ),
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: greyTextFont,
                          ),
                          onChanged: (value) {
                            setState(() {
                              _isUsernameValid = value.length >= 3;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: greyColor, width: 0.2),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: greyTextFont,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: blueTextFont,
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Container(
                        height: 45,
                        width: double.infinity,
                        child: _isSignIn
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      _isUsernameValid ? blueColor : greyColor,
                                ),
                                onPressed: _isUsernameValid
                                    ? () {
                                        setState(() {
                                          _isUsernameValid = true;
                                        });
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => HomePage(
                                                    usernameController.text)));
                                        print('goto homepage');
                                      }
                                    : null,
                                child: Text("Log In",
                                    style: whiteTextFont.copyWith(
                                        fontWeight: w500)),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Divider(
            //   height: 30,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Don't have an account?",
            //       style: greyTextFont,
            //     ),
            //     Text(
            //       " Sign Up.",
            //       style: blueTextFont.copyWith(fontWeight: w500),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        color: Colors.red,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: greyTextFont,
                    ),
                    TextSpan(
                      text: " Sign Up.",
                      style: blueTextFont.copyWith(fontWeight: w500),
                    ),
                  ]),
                ),
              ),
              // Text(
              //   "Don't have an account?",
              //   style: greyTextFont,
              //   softWrap: true,
              //   maxLines: 1,
              //   overflow: TextOverflow.ellipsis,
              // ),
              // Text(
              //   " Sign Up.",
              //   softWrap: true,
              //   maxLines: 1,
              //   overflow: TextOverflow.ellipsis,
              //   style: blueTextFont.copyWith(fontWeight: w500),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
