import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_travel/model/place.dart';


class DetailScreen extends StatelessWidget {
  final Place place;
  DetailScreen({@required this.place});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints){
          if(constraints.maxWidth > 800){
            return DetailWebPage(place:place);
          }
          else {

            return DetailMobilePage(place:place);
          }
        });

  }
}

class DetailWebPage extends StatefulWidget {
  final Place place;
  const DetailWebPage({@required this.place});

  @override
  _DetailWebPageState createState()=>_DetailWebPageState();


}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final _scrollController=ScrollController();
    // TODO: implement build
   final screenWidth=MediaQuery
    .of(context)
    .size
    .width;
   return Scaffold(
     appBar: kIsWeb?null:AppBar(),
     body: SingleChildScrollView(
      child: Padding(
         padding: const EdgeInsets.symmetric(
           vertical: 16,
           horizontal: 64,
         ),
         child: Center(
           child: Container(
             width: screenWidth <= 1200 ? 800 : 1200,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:<Widget> [
                 Container(
                   width: double.infinity,
                   height: 600,
                   child: Stack(
                     children: [
                       Image.asset(
                         widget.place.imageUrl,
                         height: 600,

                         fit: BoxFit.fill,
                       ),
                       Positioned(
                         left: 30,
                         top: 60,
                         child: GestureDetector(
                           onTap: () {
                             Navigator.pop(context);
                           },
                           child: Container(
                             padding: EdgeInsets.all(4),
                             decoration: BoxDecoration(
                                 color: mBackgroundColor,
                                 borderRadius: BorderRadius.circular(8)),
                             child: Icon(
                               Icons.arrow_back_ios,
                             ),
                           ),
                         ),
                       ),
                       Positioned(
                         right: 16,
                         bottom: 16,
                         child: Container(
                             child: FavoriteButton()
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.only(
                     left: 30,
                     right: 30,
                     top: 12,
                     bottom: 24,
                   ),
                   decoration: BoxDecoration(
                       color: mSecondaryColor,
                       borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(36),
                         bottomRight: Radius.circular(36),
                       )
                   ),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             widget.place.title,
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             widget.place.alamat,
                             style: TextStyle(
                               fontSize: 12,
                             ),
                           ),
                         ],
                       ),

                     ],
                   ),
                 ),
                 SizedBox(
                   height: 36,
                 ),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         "Deskripsi ",
                         style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Text(
                         widget.place.deskripsi,
                         textAlign: TextAlign.justify,
                         style: TextStyle(
                           fontSize: 14,
                           height: 1.5,
                         ),
                       ),

                     ],
                   ),
                 ),

               ],
             ),
           ),
         ),
       ),
     )

   );
  }
  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }
}

class DetailMobilePage extends StatelessWidget {
  final Place place;
  const DetailMobilePage({this.place});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(


     body:SafeArea(
       child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,

             children: [
               Container(
                 width: double.infinity,
                 height: 600,
                 child: Stack(
                   children: [
                     Image.asset(
                       place.imageUrl,
                       height: 600,

                       fit: BoxFit.cover,
                     ),
                     Positioned(
                       left: 30,
                       top: 60,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.pop(context);
                         },
                         child: Container(
                           padding: EdgeInsets.all(4),
                           decoration: BoxDecoration(
                               color: mBackgroundColor,
                               borderRadius: BorderRadius.circular(8)),
                           child: Icon(
                             Icons.arrow_back_ios,
                           ),
                         ),
                       ),
                     ),
                     Positioned(
                       right: 16,
                       bottom: 16,
                       child: Container(
                           child: FavoriteButton()
                       ),
                     ),
                   ],
                 ),
               ),



               Container(
                 padding: const EdgeInsets.all(16),
                 decoration: BoxDecoration(
                     color: mSecondaryColor,
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(36),
                       bottomRight: Radius.circular(36),
                     )
                 ),
                 child: Row(

                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Flexible(child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Text(
                           place.title,
                           overflow: TextOverflow.visible,
                           textAlign: TextAlign.left,


                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,


                           ),
                         ),
                         Text(
                           place.alamat,
                           style: TextStyle(
                             fontSize: 12,
                           ),
                         ),
                       ],
                     ))
                     ,

                   ],
                 ),
               ),
               SizedBox(
                 height: 36,
               ),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 30),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "Deskripsi ",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Text(
                       place.deskripsi,
                       textAlign: TextAlign.justify,
                       style: TextStyle(
                         fontSize: 14,
                         height: 1.5,
                       ),
                     ),

                   ],
                 ),
               ),

             ],

           )
       ),
     )


   );

  }



}



class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

