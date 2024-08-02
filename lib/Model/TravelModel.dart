class Teravelmodel{

String name;
String location;
String img;
String distance;
String temp;
String rating;
String description;
String totalprice;

Teravelmodel({
required this.name,
required this.location,
required this.img,
required this.distance,
required this.temp,
required this.rating,
required this.description,
required this.totalprice,

});
}

List<Teravelmodel> teravelList = [

Teravelmodel(name:"Dubrovnik",
 location:"Dubrovnik, Croatia",
 img: "assets/images/Dubrovnik, Croatia.webp",
  distance:"20Km",
   temp: "28° C",
    rating: "4.8",
     description: "Narrow streets lined with cobblestones with a view of the turquoise-blue pristine waters, you can visit the Old Town to learn more about this quaint little place. For a Game of Thrones fan, this place is better than heaven as they can go on the beloved Game of Thrones tour. Don’t forget to taste their very own top-notch wine here.",
      totalprice: "\$1024"),
// End
Teravelmodel(name:"Drame House",
 location:"Drame House",
 img: "assets/images/Drame House.jpg",
  distance:"30Km",
   temp: "23° C",
    rating: "6.2",
     description: "Green fields stretching for miles make Edinburgh one of the most dazzling places to visit. Whether you venture to the massive rustic Edinburgh Castle, explore the extinct volcano, or even enjoy the expansive view from the highest point of Arthur’s Seat, you’ll have the best time here. With gothic buildings and tons of greenery, it’s one of the top locations for some fresh oxygen.",
      totalprice: "\$2070"),
// End
Teravelmodel(name:"Rio de Janeiro",
 location:"Rio de Janeiro, Brazil",
 img: "assets/images/Rio de Janeiro, Brazil.webp",
  distance:"14Km",
   temp: "32° C",
    rating: "2.8",
     description: "Known for its friendly people who welcome travelers with open arms, Rio de Janeiro has sandy beaches and pristine waters that make it especially attractive. If you decide to visit, you shouldn’t miss out on the 38-meter-high Christ the Redeemer iconic statue. In addition to this, explore Sugarloaf Mountain and tour Tijuca National Park, one of the most extensive urban rainforests in the world. ",
      totalprice: "\$3100"),
// End
Teravelmodel(name:"Sangapour",
 location:"Sangapour",
 img: "assets/images/Sangapour.jpg",
  distance:"46Km",
   temp: "26° C",
    rating: "8.0",
     description: "Singapore is a big city. It is also an exceptionally modern city. But its size and its modernity has not seen it sacrifice beauty to development. Unlike so many other mega cities, Singapore has found innovative ways to reject the wholesale creation of emptily banal non-places. Instead, it retains a huge sense of personality, character, and a strong appreciation for the natural world. From the world’s first safari park for nocturnal animals to Jewel Changi (perhaps the most beautiful airport in the world), Singapore is a city where the natural and the modern have found a curious way of getting along together. And it really works.",
      totalprice: "\$4200"),
      

];


