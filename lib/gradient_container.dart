import 'package:flutter/material.dart';
import 'package:flutter_application_4/styled_text.dart';

/*
!variables const final mevzularına dair

variables when created with the var keyword can actually be reassigned. 
so when you use variables at somewhere and variables can change so 
when its not guaranteed to be constant because the value could change. 

if you use const it means that it will cached and will reuse but when you use variables they could change 
so you can't use constant

we can define variables and we can use them multiple times. 

if you create a variable like this

var startAlignment;

dart will say it's dynamic and dynamic is a type too. It means dart knows nothing about the type of this variable. So it will accept all types.
we avoid dynamic usually because we might get errors we should not use wrong type in the wrong place. 

Türkçeye geçelim sıkıldım ing yazmaktan. 

eğer bir değişken başka yeni bir değer hiç almayacaksa final keyword'ü kullanılır.
değişkenleri tanımlarken belirtmek iyi olur best practice. 

const keywordü de değişken tanımlarken bir değişken başka yeni bir değer hiç almayacaksa kullanılır.
ama final'a kıyasla const ile değişken tanımladığımızda darta derleme zamanı sabiti olduğunu söylüyoruz.
yani derleme zamanında bu belirleniyor. 

ancak her zaman const kullanamayız çünkü örneğin bir değişkenin değerini bir fonksiyondan almak istiyorsak
fonksiyonun da vereceği değer uygulama çalıştığında olması gerekiyor gibi düşünelim o nedenle derleme zamanında değerini alamaz. 
işte öyle durumlarda da final kullanılır. 

const kullanıldığında uygulama çalıştığında const değişkeninin çalışması gerekmez zaten compile time da savelenir 
çalışacağı zaman da dart kullanır onu. yani const performans optimizasyonudur. 

?şimdi styled_text.dart 'a git

şimdi oradan geldin benzer şeyleri GradientContainer sınıfı için de yapalım. renkleri mesela kullanırken alalım.

dartta listeler final olarak tanımlansa da değiştirilebilir bu biraz ileri bi konu şimdilik önemli değil.

? birinci kullanım 

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  böyle yaptık. ancak şöyle de yapabilirdik.

? alternatif kullanım

const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

 */

final degiskenim = 0; //runtime uygulama çalıştığında
const ikinciDegiskenim = 0; //derleme zamanında kilitlenir direkt

const baslangicAlignment = Alignment.topLeft;
const sonAlignment = Alignment.bottomRight;

final startAlignment =
    Alignment.topLeft; //our startAlignment variable is a data container and now it contains Alignment.topLeft
var endAlignment = Alignment.bottomRight;

Alignment?
    alignmentIste; // the ? meaning is alignmentIste is a Alignment type or its null. So null value would be allowed for this variable.

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: baslangicAlignment, //using our variables
          end: sonAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World'),
      ),
    );
  }
}
