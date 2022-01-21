part of 'pages.dart';

class TrayekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: blueColor,
        title:
            Text('Trayek', style: whiteTextFont.copyWith(fontWeight: w600)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/blokm.png'),
            ],
          ),
        ),
      ),
    );
  }
}
