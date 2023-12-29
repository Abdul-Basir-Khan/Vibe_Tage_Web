import 'package:flutter/material.dart';
import '../../constant/reusabletext.dart';
import 'custom_container.dart';
import 'help_request.dart';

class MyHomePageTab extends StatefulWidget {
  const MyHomePageTab({Key? key}) : super(key: key);

  @override
  State<MyHomePageTab> createState() => _MyHomePageTabState();
}

class _MyHomePageTabState extends State<MyHomePageTab> {
  int _currentIndex = 0;


  List<ContainerModel> List1 = [
    ContainerModel(
        text1: "Homepage",
        text2: "Adjust settings, manage notifications, learn about name changes and more.",
        image: "Assets/images/help_center/001-user-avatar.png"

    ),
    ContainerModel(
        text1: "Login and password",
        text2: "Fix login issues and learn how to change or reset your password.",
        image: "Assets/images/help_center/002-import.png"

    ),
    ContainerModel(
        text1: "Messaging Help",
        text2: "Adjust settings, manage notifications, learn about name changes and more.",
        image: "Assets/images/help_center/003-message.png"

    ),
    ContainerModel(
        text1: "Sharing Photos and Videos",
        text2: "Adjust settings, manage notifications, learn about name changes and more.",
        image: "Assets/images/help_center/image-upload.png"

    ),
    ContainerModel(
        text1: "Manage your Account",
        text2: "Adjust settings, manage notifications, learn about name changes and more.",
        image: "Assets/images/help_center/005-settings.png"

    ),
    ContainerModel(
        text1: "Privacy and security",
        text2: "Control who can see what you share & add extra protection to your account.",
        image: "Assets/images/help_center/006-shield.png"

    ),
    ContainerModel(
        text1: "Marketplace",
        text2: "Learn how to buy and sell things on Facebook.",
        image: "Assets/images/help_center/007-store.png"

    ),
    ContainerModel(
        text1: "Rules and policies",
        text2: "The VibeTag Rules, Deceased individuals ,Username squatting policy",
        image: "Assets/images/help_center/008-papers.png"

    ),
    ContainerModel(
        text1: "Gold My Vibes",
        text2: "Gold My Vibes Policies, Terms and Condition",
        image: "Assets/images/help_center/009-heart.png"

    ),
    ContainerModel(
        text1: "Still need help?",
        text2: "If you still feel issue. We’re here for you.",
        image: "Assets/images/help_center/customer-service 1.png"

    ),

  ];

  List<IndexModel> List2 = [
    IndexModel(
 index: 0,
    ),
    IndexModel(
      index: 1,
    ),
    IndexModel(
      index: 2,
    ),
    IndexModel(
      index: 3,
    ),
    IndexModel(
      index: 4,
    ),
    IndexModel(
      index: 5,
    ),
    IndexModel(
      index: 6,
    ),
    IndexModel(
      index: 7,
    ),
    IndexModel(
      index: 8,
    ),
    IndexModel(
      index: 9,
    ),
    IndexModel(
      index: 10,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            height: MediaQuery.sizeOf(context).height*0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Stack(children: [
              Image(
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.cover,
                  image:
                      const AssetImage("Assets/images/help_center/Rectangle 24220.png")),
              Image(
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.cover,
                  image: const AssetImage("Assets/images/help_center/Mask group.png")),
              Positioned(
                left: 10,
                right: 10,
                top: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableText(
                      title: 'What do you need help with?',
                      size: 20,
                      weight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 54,
                      width: MediaQuery.of(context).size.width * 1,
                      child:

                      TextField(
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff99A7C7)),
                          hintText: 'Search question or articles',
                          prefixIcon: Icon(Icons.search,),// Prefix icon
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                                color: Colors.white), // Color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                                color: Colors.white), // Color when focused
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
GridView.builder(
  physics: ScrollPhysics(),
  shrinkWrap: true,itemCount: List1.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    childAspectRatio: 20/22,
  crossAxisCount: 5,crossAxisSpacing: 10,mainAxisSpacing: 10,
), itemBuilder: (BuildContext context, int index) { return InkWell(
  onTap: () {
    setState(() {
      _currentIndex = List2[index].index!;
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpRequest()));
    });
  },
  child: CustomContainer(

    text1: List1[index].text1.toString(),
    text2:

    List1[index].text2.toString(),
    imagePath: List1[index].image.toString(),
    borderColor:
    _currentIndex ==List2[index].index? const Color(0xffFF9200) : const Color(0xffC8D1E5), textColor:  _currentIndex ==List2[index].index? const Color(0xffFF9200) : const Color(0xff212121),
  ),
); }, )


        ],
      ),
    );
  }
}

class ContainerModel{
String? text1;
String? text2;
String? image;
ContainerModel({this.image,this.text1,this.text2});

}
class IndexModel{
  int? index;
  IndexModel({this.index,});
}
