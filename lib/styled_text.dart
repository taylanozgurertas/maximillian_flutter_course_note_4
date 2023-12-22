import 'package:flutter/material.dart';

/*
buradaki custom widgetımızda yazı olarak Hello World olacak ne zaman kullansak ancak bizim istediğimiz
tekrar tekrar kullanırken sadece yazıyı değiştirmek. yani kullanırken ne yazacağını vermek ona göre bu stilde bir text widgetı versin bize. 

StyledText() sınıfı kullanılırken constructor fonksiyon çağrılır bunu biliyoruz
eğer constructor fonksiyonumuz yoksa otomatik olarak dart oluşturur bize. eğer 
StyledText("Hello World") şeklinde kullanmak istiyorsak StyledText sınıfının constructor fonksiyonunda bunu almamız gerekir. 

keyi alıyormuşuz zaten ama key named argument yani zorunlu değil. onun yanında başka şeyler de alabiliriz yani. virgül at koy aga
named arguments olarak da alabiliriz positional arguments olarak da alabiliriz positional argument olarak alıyorsak named argumentlardan önce yazarız.

aldığımız key argumenti Flutter frameworkte Key sınıfından gelir flutterda widgetlar arasında benzersiz bir tanımlayıcı olarak kullanılır. 
widgetlar arasında ilişkilendirme yaparken veya widgetların durumunu takip etmek için kullanılabilir. racondur. 
StyledText sınıfını kullanırken key argümanını vermek zorunda değiliz çünkü named argument tır yani optionaldır vermesi zorunlu değildir.

Biz bir positional argument ekledik bu sınıf kullanılırken constructor fonksiyon çağrılır ve bizden zorunlu olarak String text bekler.

Sınıf içinde bir String textDegiskeni diye bir degisken oluşturuyoruz. 

Yapmamız gereken şey bu sınıf kullanıldığında gelen texti bizim sınıf içinde oluşturduğumuz text değişkenine atmak.
Bunu yapmanın 2 yolu var birincisi bu kullanım:

? 1.KULLANIM

const StyledText(String text,
      {super.key}) : textDegiskeni = text;

? 2.KULLANIM

sınıf içindeki değişkenin adını text yapıp şöyle yazmak:
const StyledText(this.text, {super.key});

böyle olunca parametre olarak gelen texti bu sınıftaki text değişkenine koyar.
this keywordü dart tarafından verilir bize. classın içindeki şeylere erişirken kullanırız. 

şimdi sınıf içinde oluşturduğumuz String textDegiskenine bakacak olursak. 
Bu değişken yalnızca bu sınıf kullanıldığında bir text değeri alacak eğer bu textDegiskeni'ne bir daha değer atamak istemiyorsak
final yapmalıyız. onu final yaparsak constructor fonksiyonumuzu da const yapabiliriz çünkü artık sınıf kullanıldığında değerini alacak ve
bir daha değişmeyeceği garantilendiği için const kullanılabilir. 



 */

class StyledText extends StatelessWidget {
  const StyledText(String text, {super.key})
      : textDegiskeni =
            text; //we use constructor function, give the key argument and unlocked with various optimization with using 'const'

  //variable oluşturuyoruz class içinde

  final String textDegiskeni;

  @override
  Widget build(context) {
    return Text(
      textDegiskeni,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
