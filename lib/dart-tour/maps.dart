/**
 * MAPS:
 *  Em geral, um mapa é um objeto que associa chaves e valores.
 *  Tanto as chaves quanto os valores podem ser qualquer tipo de objeto.
 *  Cada chave ocorre apenas uma vez, mas você pode usar o mesmo valor várias vezes. 
 *  O suporte Dart para mapas é fornecido por literais de mapa e o tipo de mapa . 
 */



void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print (  gifts['first']);
  print (  nobleGases[2]);

  // Outra forma de criar mapa , usando contrutor do tipo
     gifts = Map();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

   nobleGases = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print (  gifts['second']);
  print (  nobleGases[10]);



}



