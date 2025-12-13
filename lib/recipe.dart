class Recipe {
  String imgLabel;
  String imageUrl;
  String description; 

  Recipe(this.imgLabel, this.imageUrl, this.description); 

  static List<Recipe> samples = [
    Recipe(
      'Sweatshirt', 
      'assets/images/Sweatshirt_17_11zon.webp',
      'Sweatshirt สวมใส่สบาย เหมาะสำหรับทุกกิจกรรม',
    ),
    Recipe(
      'DRY-EX T-Shirt | Printed', 
      'assets/images/DRY-EX T-Shirt_16_11zon.webp',
      'เสื้อยืด DRY-EX พิมพ์ลาย ระบายอากาศได้ดีเยี่ยม',
    ),
    Recipe(
      'DRY-EX Crew Neck T-Shirt | Patterned', 
      'assets/images/DRY-EX Crew Neck T-Shirt_15_11zon.webp',
      'เสื้อยืด DRY-EX คอกลม ลวดลายสวยงาม ใส่ได้ทุกโอกาส',
    ),
    Recipe(
      'MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) | Monsters, Inc.', 
      'assets/images/MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) Monsters, Inc._14_11zon.webp',
      'เสื้อยืดลาย Monsters, Inc. ดีไซน์สุดคลาสสิก',
    ),
    Recipe(
      'MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) | Mickey Mouse', 
      'assets/images/MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) Mickey Mouse_13_11zon.webp',
      'เสื้อยืดลาย Mickey Mouse สวมใส่สบายและดูดี',
    ),
    Recipe(
      'Fluffy Yarn Fleece Full-Zip Jacket', 
      'assets/images/Fluffy Yarn Fleece Full-Zip Jacket_12_11zon.webp',
      'เสื้อแจ็คเก็ตขนแกะนุ่มฟู ซิปเต็มตัว ให้ความอบอุ่น',
    ),
    Recipe(
      'PUFFTECH Jacket | Pocketable', 
      'assets/images/PUFFTECH Jacket Pocketable_11_11zon.webp',
      'เสื้อแจ็คเก็ต PUFFTECH พับเก็บได้ พกพาสะดวก',
    ),
    Recipe(
      'HEATTECH Lined Mittens | Souffle Yarn', 
      'assets/images/HEATTECH Lined Mittens Souffle Yarn_10_11zon.webp',
      'ถุงมือบุ HEATTECH เส้นใยซูเฟล่ ให้ความอบอุ่นสูงสุด',
    ),
    Recipe(
      'HEATTECH Ribbed Beanie | Marled Yarn', 
      'assets/images/HEATTECH Ribbed Beanie Marled Yarn_9_11zon.webp',
      'หมวกไหมพรม HEATTECH ลายทาง ให้ความอบอุ่นศีรษะ', 
    ),
    Recipe(
      'HEATTECH Scarf | Patterned', 
      'assets/images/HEATTECH Scarf Patterned_8_11zon.webp',
      'ผ้าพันคอ HEATTECH ลวดลายสวยงาม เหมาะสำหรับฤดูหนาว', 
    ),
    Recipe(
      'Ultra Stretch Dress | Sleeveless', 
      'assets/images/Ultra Stretch Dress Sleeveless_7_11zon.webp',
      'ชุดเดรสยืดพิเศษ แขนกุด ดีไซน์เรียบหรู',
    ),
    Recipe(
      'Drapey Denim Skort', 
      'assets/images/Drapey Denim Skort_6_11zon.webp',
      'กระโปรงกางเกงยีนส์เดรป สวมใส่สบายและทันสมัย',
    ),
    Recipe(
      'Linen Cotton Shorts | Striped', 
      'assets/images/Linen Cotton Shorts Striped_5_11zon.webp',
      'กางเกงขาสั้นผ้าลินินคอตตอนลายทาง ใส่สบายในวันพักผ่อน',
    ),
    Recipe(
      'Linen Blend Easy Pants | Can Be Set Up With Tops', 
      'assets/images/Linen Blend Easy Pants Can Be Set Up With Tops_4_11zon.webp',
      'กางเกงขายาวผ้าลินินเบลนด์ สามารถเข้าชุดกับเสื้อได้', 
    ),
    Recipe(
      'Linen Blend Easy Pants | Striped', 
      'assets/images/Linen Blend Easy Pants Striped_3_11zon.webp',
      'กางเกงขายาวผ้าลินินเบลนด์ลายทาง สวมใส่สบายและระบายอากาศได้ดี',
    ),
  ];
}