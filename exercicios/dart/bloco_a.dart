número 1:
void main() {
  String nome = 'Marcos';
  
  String cidade = 'Ceres';
  
  double area = 3.72;
  
  int ano_safra = 2015;
  
  print ("NOME :$nome, Cidade:$cidade, Área:$area, Ano de Safra:$ano_safra");
}

número 2:

void main() {
  var nome = 'Marcos';
  
  var cidade = 'Ceres';
  
  var area = 3.72;
  
  var ano_safra = 2015;
  
  print ("NOME :$nome, Cidade:$cidade, Área:$area, Ano de Safra:$ano_safra");
}

/* Para nome e cidade ele utilizou Strings, area double e ano int, como antes declarado.
 */

número 3:
void main() {
  
  const String alqueire_goiano = '4.84 ha';
  
  const DateTime agora = DateTime.now();
  
  print('Alqueire Goiano: $alqueire_goiano');
  print('Data/Hora atual: $agora');
}

/*
 * compileNewDDC
main.dart:5:35: Error: Cannot invoke a non-'const' constructor where a const expression is expected.
Try using a constructor or factory that is 'const'.
  const DateTime agora = DateTime.now();
                                  ^^^
não tem como eu tratar como uma constante que é definida antes da compilação
já a final só vai atribuir horario nesse datetime quando o programa for rodado, não podendo ser mudado.
 */

número 4:

void main() {
  
  const double alqueire_goiano = 4.84;
  
  double area_hectares = 150.0;
  
  double area_alqueire = area_hectares/alqueire_goiano;
  
  print('Área em hectares: $area_hectares ha --- Área em alqueires goianos: ${area_alqueire.toStringAsFixed(2)} alqueires');
  
}

número 5:

void main() {
  
  double cotacao1 = 150.5;
  double cotacao2 = 175.3;
  double cotacao3 = 131.5;
  
  double maior1e2 = cotacao1 > cotacao2 ? cotacao1:cotacao2;
  double maiorall = maior1e2 > cotacao3 ? maior1e2:cotacao3;
  
  double menor1e2 = cotacao1 < cotacao2 ? cotacao1:cotacao2;
  double menorall = menor1e2 < cotacao3 ? menor1e2: cotacao3;
  
  double media = (cotacao1+cotacao2+cotacao3)/3;
  
  print('A maior cotação é: $maiorall -- A menor cotação é: $menorall -- A média é: $media');
}
