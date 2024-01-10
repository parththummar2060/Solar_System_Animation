class Detail{

  String? img;
  String? data;
  String? location;
  String? name;
  String? sunDistance;
  double? scale;

  Detail({
    required this.img,
    required this.data,
    required this.location,
    required this.sunDistance,
    required this.name,
    required this.scale,
});
}

List <Detail> allDetails = <Detail>[
  Detail(img: "http://assets.stickpng.com/images/580b585b2edbce24c47b2709.png", data: "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. ", location: "57.9m km", sunDistance: "36 million miles", name: 'MERCURY',scale:10),
  Detail(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Venus_globe_-_transparent_background.png/1024px-Venus_globe_-_transparent_background.png", data: "It's a cloud-swaddled planet named for a love goddess, often called Earth’s twin. But pull up a bit closer, and Venus turns hellish.", location: "108.2m km", sunDistance: "7,926 miles ", name: 'VENUS',scale: 10,),
  Detail(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Earth_Western_Hemisphere_transparent_background.png/1200px-Earth_Western_Hemisphere_transparent_background.png", data: "Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things. While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. ", location: "149.6m km", sunDistance: "93 million miles",name: "EARTH",scale: 12),
  Detail(img: "https://pngimg.com/uploads/mars_planet/mars_planet_PNG27.png", data: "Mars is no place for the faint-hearted. It’s dry, rocky, and bitter cold. The fourth planet from the Sun, Mars is one of Earth's two closest planetary neighbors (Venus is the other).", location: "227.9m km", sunDistance: "1,170 miles",name: "MARS",scale: 13),
  Detail(img: "http://assets.stickpng.com/images/580b585b2edbce24c47b2712.png", data: "Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined.", location: "778.3m km", sunDistance: "43,440.7 miles",name: "JUPITER",scale: 8),
  Detail(img: "http://assets.stickpng.com/images/580b585b2edbce24c47b270d.png", data: "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium.", location: "1427.0m km", sunDistance: "43,440.7 miles",name: "SATURN",scale: 8),
];