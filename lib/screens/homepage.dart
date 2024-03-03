import 'package:app/utils/global.dart';
import 'package:app/widgets/post.dart';
import 'package:app/widgets/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackgroundColor,
        appBar: AppBar(
          backgroundColor: darkBackgroundColor,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage('assets/images/logo.png'), height: 35),
                  Expanded(child: SizedBox(), flex: 1),
                  Icon(Icons.favorite_outline, color: Colors.white, size: 26),
                  SizedBox(width: 10),
                  Icon(Icons.message_outlined, color: Colors.white, size: 26),
                ],
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: Row(
                      children: [
                        Story(
                          img:
                              "https://images.unsplash.com/photo-1519791883288-dc8bd696e667?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8eW91ciUyMHN0b3J5fGVufDB8fDB8fHww",
                          username: "Shaurav",
                        ),
                        Story(
                          img:
                              "https://pixlr.com/images/index/ai-image-generator-two.webp",
                          username: "Aman",
                        ),
                        Story(
                          img:
                              "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
                          username: "Ayush",
                        ),
                        Story(
                          img:
                              "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
                          username: "Lali",
                        ),
                      ],
                    ),
                  )),
              const Divider(
                thickness: 0.2,
                color: secondaryColor,
              ),
              const Post(
                username: "Aniket Choudhary",
                userurl:
                    "https://www.partysuppliesindia.com/cdn/shop/products/A2_33_c020ee18-0c82-4dc1-b16d-c90a64707b20.jpg?v=1635508143&width=3840",
                posturl:
                    "https://filmfare.wwmindia.com/content/2023/mar/tarrukhraina11678987692.jpg",
                date: '05/10/2023',
                likes: 599,
                desc: "Nice experience in kerala",
                title: "Kerala",
              ),
              const Post(
                username: "Saurabh",
                userurl:
                    "https://cdn.shopify.com/s/files/1/0040/8997/0777/files/cute_rabbit_2_1024x1024.jpg?v=1696637386",
                posturl:
                    "https://whc.unesco.org/uploads/thumbs/site_1056_0001-750-750-20120601152647.jpg",
                date: "10/01/2024",
                desc: "Gaya Visit",
                title: "Beautiful Experience ",
                likes: 569,
              )
            ],
          ),
        ));
  }
}
