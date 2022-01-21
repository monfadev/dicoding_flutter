part of 'pages.dart';

class CreatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Text('About Us',
            style: whiteTextFont.copyWith(fontWeight: w600)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/creator.JPG'),
            SizedBox(height: 50),
            Image.asset(
              'assets/images/monfadev.png',
              scale: 3,
            ),
            SizedBox(height: 10),
            Text('@monfadev', style: blackTextFont),
          ],
        ),
      ),
    );
  }
}
