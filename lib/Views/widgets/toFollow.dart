import 'package:flutter/material.dart';
import 'package:medium/Views/Colors.dart';

class ToFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 600,
      width: size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemBuilder: (context, index) {
            return ProfileCard();
          }),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.fromLTRB(0,0,24,0),
      child: Column(
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.circular(4),
            child: Image(
              width: size.width * 0.305,
              height: size.width * 0.305,
              fit: BoxFit.fill,
              image: const NetworkImage(
                  "https://i.pinimg.com/564x/b9/28/76/b928767d2ad30030c07ebb3201a98990.jpg"),
            ),
          ),
          Container(
            width: size.width * 0.305,
            padding:const EdgeInsets.symmetric(vertical: 12) ,
            child: Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Lorenzo Pichilli',
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'I\'m a Software Engineer mostly focused on Web (FullStack) and Mobile Development. JavaScript, TypeScript & Flutter enthusiast ',
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 14,height:1.4 ,
                        fontWeight: FontWeight.w300),
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: size.width * 0.305,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24), // radius of 10
                color: secondaryColor // green as background color
                ),
            child: Text(
              'Follow',
              style: TextStyle(
                  color: backgroundColor,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
