import 'dart:io';

void main(List<String> args){
  try{
    List<int> sayilar = [];
    print("Lütfen 10 sayi giriniz: ");
    for(int i = 0; i < 10; i++){
      int? sayi = int.parse(stdin.readLineSync()!);
      sayilar.add(sayi);
    }
    print("\n");
    print("-----------------");
    print("\n");
    int sayac = 0;
    for(int element in sayilar){
      if(element % 2 == 0){
        print("$element ");
        sayac++;
      }
    }
    if(sayac == 0){
      print("Listenizde cift sayi yok!");
    }
  }on FormatException catch(e){
    print("Lütfen integer sayi giriniz! Hata mesaji: ${e.message}");
  }
}