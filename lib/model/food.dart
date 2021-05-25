class FoodData{
  String name;
  String description;
  String thumbnail;
  List<String> imageAsset;
  String ingredients;
  int price;
  double rate;

  FoodData({required this.name,required this.description,required this.thumbnail,required this.imageAsset,required this.ingredients,required this.price,required this.rate});


}
var foodDataList=[
  FoodData(
    name: 'Sate', 
    description: 'Sate adalah makanan tusuk tusuk', 
    thumbnail: 'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg', 
    imageAsset: [ 'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg',
                  'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg'], 
    ingredients: 'jagung', 
    price : 5000, 
    rate: 5),

    FoodData(
    name: 'Soto', 
    description: 'Sato adalah makanan tusuk tusuk', 
    thumbnail: 'https://akcdn.detik.net.id/community/media/visual/2020/12/02/soto-ayam-bening-segar.png?w=700&q=90', 
    imageAsset: [ 'https://akcdn.detik.net.id/community/media/visual/2020/12/02/soto-ayam-bening-segar.png?w=700&q=90',
      'https://akcdn.detik.net.id/community/media/visual/2020/12/02/soto-ayam-bening-segar.png?w=700&q=90'], 
    ingredients: 'jagung', 
    price : 5000, 
    rate: 5),
  FoodData(
    name: "Steak Daging Sapi Korea",
    description:
          "Daging sapi Korea adalah jenis sapi paling premium di Korea. Namun, untuk menikmatinya Anda tidak perlu jauh-jauh ke Korea Selatan. Steak Sapi Korea Oppa Bandung ini sudah terkenal di seluruh Indonesia dan sudah memiliki lebih dari 2 juta cabang.",
    thumbnail:  "https://cdns.klimg.com/dream.co.id/resources/news/2020/04/06/133546/bikin-steak-di-rumah-pastikan-bumbunya-meresap-2004066.jpg",
    imageAsset: ["https://cdns.klimg.com/dream.co.id/resources/news/2020/04/06/133546/bikin-steak-di-rumah-pastikan-bumbunya-meresap-2004066.jpg","https://cdns.klimg.com/dream.co.id/resources/news/2020/04/06/133546/bikin-steak-di-rumah-pastikan-bumbunya-meresap-2004066.jpg"],
    ingredients: "Daging Sapi Korea, Garam, Lada Hitam",
    price: 750000,
    rate: 4),
    FoodData(
      name: "Korean Raw Beef Tartare",
      description:
          "Daging sapi Korea cincang yang disajikan mentah dan disiram saus spesial dengan toping kuning telur dan taburan biji wijen.",
      thumbnail: "https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999",
      imageAsset: ["https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999","https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999"],
      ingredients: "Daging Sapi Korea, Telur, Biji Wijen",
      price: 350000,
      rate: 3),
    FoodData(name: "Sate Sayur Sultan",

      description: "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      thumbnail: "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
      imageAsset: ["https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg","https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg"],
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 150000,
      rate: 4),
    FoodData(
      name: "Korean Raw Beef Tartare",
    
      description:
          "Daging sapi Korea cincang yang disajikan mentah dan disiram saus spesial dengan toping kuning telur dan taburan biji wijen.",
      thumbnail: "https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999" ,
      imageAsset: ["https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999","https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999"],
      ingredients: "Daging Sapi Korea, Telur, Biji Wijen",
      price: 350000,
      rate: 3,
    )
];
