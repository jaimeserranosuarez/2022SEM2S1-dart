import 'dart:io';
import 'dart:math';

void main(){
  // List<int>? listEdades = [];
  // for(int i=0;i<6;i++){
  //   print("ingrese la edad de la persona ${i+1}");
  //   listEdades.add(int.parse(stdin.readLineSync()!));
  // }  
  // var sum = listEdades.reduce((a,b)=>a+b);
  // print("El promedio de edades es: ${sum/listEdades.length}");
  // print("El mayor valor de edades es: ${listEdades.reduce(max)}");
  // print("El menor valor de edades es: ${listEdades.reduce(min)}");

  //Version Yo
  // List<int> Lista1 = [1,1,2,3,5,8,13,21,34,55,89];
  // List<int> Lista2 = [1,2,3,4,5,6,7,8,9,10,11,12,13];
  //var Lista3 = Lista1.where((item) => Lista2.contains(item)).toSet();  
  //print(Lista3);
  
  //Version Ing
  // final lists = [[1,1,2,3,5,8,13,21,34,55,89], [1,2,3,4,5,6,7,8,9,10,11,12,13]];
  // final listafinal=
  // lists.fold<Set>(lists.first.toSet(),(a,b) => a.intersection(b.toSet()));
  // print(listafinal);

var numeros = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
var numerosPares = numeros.where((item) => item.isEven);
print(numerosPares);


}