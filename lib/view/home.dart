import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_app/model/post.dart';
import 'package:insta_app/view/view_post.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildPost(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),

              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      
                      height: 60.0,
                      width: 60.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),

                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            image: AssetImage(posts[index].authorImageUrl),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      posts[index].timeAgo,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    trailing: IconButton(
                      icon: const Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('more vert clicked'),
                    ),
                  ),
                  
                  InkWell(
                    onDoubleTap: () => print('thanks for liking my post'),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (_) => ViewPageScreen(userName: posts[index].authorName,),
                        )
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 350.0,
                  
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 5),
                            blurRadius: 8.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            Row(
                              children: [

                                IconButton(
                                  onPressed: () => print('Like my post'), 
                                  icon: const Icon(Icons.favorite_border),
                                  iconSize: 30.0,
                                ),

                                Text(
                                  '1,345',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                )
                              ],
                            ),

                            const SizedBox( width: 20.0,),
                            
                            Row(
                              children: [

                                IconButton(
                                  onPressed: () => print('comments'), 
                                  icon: const Icon(Icons.chat),
                                  iconSize: 30.0,
                                ),

                                Text(
                                  '345',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),

                        IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.bookmark_border),
                          iconSize: 30.0,
                        )
                      ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF0F6),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text('Instagram',
                    style: GoogleFonts.satisfy(
                      color: Colors.black,
                      fontSize: 32.0,
                    )),
                Row(children: <Widget>[
                  IconButton(
                    onPressed: () => print('you clicked me'),
                    icon: const Icon(
                      Icons.live_tv,
                    ),
                    iconSize: 30,
                  ),
                  const SizedBox(width: 16.0,),
                  Container(
                    width: 30.0,
                    child: IconButton(
                      onPressed: () => print('you clicked me'),
                      icon: const Icon(
                        Icons.send,
                      ),
                      iconSize: 30,
                    ),
                  )
                ])
              ],
            ),
          ),

          Container(
            width: double.infinity,
            height: 100.0,
           
            child: ListView.builder(
              itemCount: stories.length + 1,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, int index){
                if(index == 0){
                  return const SizedBox(
                    width: 10.0,
                  );
                }
                return Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),

                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                );
              }
            )
          ),
          
          _buildPost(0),
          _buildPost(1),
          _buildPost(2),
        ],
      ),
    );
  }
}
