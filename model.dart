

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}


List lisd = datamodel.map((e)=>Model(e["image"], e["text"])).toList();

var datamodel = [
  {"image":"assets/dress.jpg","text":"ironbox"},
  {"image":"assets/cooker.jpg","text":"cooker"},
  {"image":"assets/headphones.jpg","text":"headphones"},
  {"image":"assets/speaker.jpg","text":"speaker"},
  {"image":"assets/stove.jpg","text":"stove"},
  {"image":"assets/shaver.jpg","text":"shaver"},
];


///


class Modeltwo
{
  String? image;
  String? text;

  Modeltwo(this.image,this.text);
}


List a = datamodell.map((e)=>Model(e["image"], e["text"])).toList();

var datamodell = [
  {"image":"assets/ae.jpg","text":"amaran "},
  {"image":"assets/L.jpg","text":"melodies"},
  {"image":"assets/de.jpg","text":"thug life"},
  {"image":"assets/re.jpg","text":"retro"},
  {"image":"assets/se.jpg","text":"thangalan"},
  {"image":"assets/master.jpg","text":"master"},
];






class Modelthree
{
  String? image;
  String? text;

  Modelthree(this.image,this.text);
}


List b = datamodell.map((e)=>Model(e["image"], e["text"])).toList();

var datamod = [
  {"image":"assets/L.jpg","text":"amaran "},
  {"image":"assets/R.jpg","text":"melodies"},
  {"image":"assets/W.jpg","text":"thug life"},
  {"image":"assets/U.jpg","text":"retro"},
  {"image":"assets/str.jpg","text":"thangalan"},
  {"image":"assets/flip.jpg","text":"master"},
];

