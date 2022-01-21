part of 'pages.dart';

class DetailPage extends StatefulWidget {
  static const routeDetailPage = '/detail_page';

  final RestaurantModel restaurantsDetailPage;

  const DetailPage({required this.restaurantsDetailPage});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isFavorite = false;

  Future<void> _callcenter(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorWhite,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: colorBlack,
          ),
        ),
        titleSpacing: 0,
        title: Text(
          widget.restaurantsDetailPage.title,
          style: fontTextBlack.copyWith(fontSize: 16, fontWeight: w600),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.call, color: colorBlack),
            onPressed: () {
              setState(() {
                _callcenter('tel: ${widget.restaurantsDetailPage.phone}');
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      widget.restaurantsDetailPage.urlToImageResto),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style:
                        fontTextBlack.copyWith(fontSize: 16, fontWeight: w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.restaurantsDetailPage.description,
                    style: fontTextBlack.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style:
                        fontTextBlack.copyWith(fontSize: 16, fontWeight: w600),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: widget.restaurantsDetailPage.menu.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 16),
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .restaurantsDetailPage
                                          .menu[index]
                                          .urlToImage),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(8),
                                        height: 40,
                                        width: 40,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isFavorite = !_isFavorite;
                                            });
                                          },
                                          child: _isFavorite
                                              ? Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 30,
                                                )
                                              : Icon(
                                                  Icons.favorite_outline,
                                                  color: colorWhite,
                                                  size: 30,
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  widget.restaurantsDetailPage.menu[index]
                                      .titleImage,
                                  style: fontTextBlack.copyWith(fontSize: 16),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  widget.restaurantsDetailPage.menu[index]
                                      .hargaMenu,
                                  style: fontTextBlack.copyWith(
                                      fontSize: 16, fontWeight: w600),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
