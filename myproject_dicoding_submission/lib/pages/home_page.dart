part of 'pages.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Text('Transjakarta',
            style: whiteTextFont.copyWith(fontWeight: w600)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/map.JPG', fit: BoxFit.cover),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(2),
              border: Border.all(color: greyColor, width: 0.2),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Where are you going $username?',
                hintStyle: greyTextFont,
              ),
              onChanged: (value) {},
            ),
          ),
          Align(
            alignment: Alignment(1, -0.8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreatorPage()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 40,
                child: Icon(Icons.create),
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  border: Border.all(color: greyColor, width: 0.2),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.10,
            maxChildSize: 0.4,
            builder: (BuildContext context, scroll) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: ListView(
                  ///After EdgeInsets.zero Listview dont have safearea now!.
                  padding: EdgeInsets.zero,
                  controller: scroll,
                  children: [
                    Center(
                        child: Container(
                            height: 4,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                borderRadius: BorderRadius.circular(5)))),
                    SizedBox(height: 15),
                    Text("Trayek",
                        style: blackTextFont.copyWith(fontWeight: w500)),
                    SizedBox(height: 15),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrayekPage()));
                            },
                            leading: Text('01'),
                            title: Text('Blok M - Kota'),
                            trailing: Container(
                              height: 20,
                              width: 20,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
