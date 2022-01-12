

class Post {

  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    required this.authorName,
    required this.authorImageUrl,
    required this.timeAgo,
    required this.imageUrl,
    
  });

}

final List<Post> posts =[
  Post(
    authorName: 'Bilee Nelson', 
    authorImageUrl: 'images/1.jpg', 
    timeAgo: '6 min', 
    imageUrl: 'images/4.jpg',
  ),
  Post(
    authorName: 'Kemberly Nash', 
    authorImageUrl: 'images/6.jpg', 
    timeAgo: '6 min', 
    imageUrl: 'images/5.jpg',
  ),
  Post(
    authorName: 'Glee Rapheal', 
    authorImageUrl: 'images/5.jpg', 
    timeAgo: '6 min', 
    imageUrl: 'images/3.jpg',
  ),

];

final List<String> stories = [
  'images/1.jpg',
  'images/2.jpg',
  'images/3.jpg',
  'images/4.jpg',
  'images/5.jpg',
  'images/6.jpg',
  'images/7.jpg'
];