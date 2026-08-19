Número 1:

void main() {
  
  String? telefone;
  
  print(telefone ?? 'não informado');
}

Número 2:

void main() {
  
  String? telefone;
  
  print(telefone?.length ?? 'não informado');
}

Número 3:

void main() {
  
  String Verificar_Chuva(double? chuvaMm){
    return chuvaMm == null
      ? 'sem registro'
      : (chuvaMm < 20 ?'seca' : 'normal');
    
  }
}

Número 4:

  double? Saca_Hectar(double total_saca, double area_hectar){
    if(area_hectar <= 0){
      return null;
    }
    return total_saca/area_hectar;
  }
  

void main() {
  
  double? resultado = Saca_Hectar(330,10);
  
  
  if(resultado != null){
    print('Resultado: $resultado');
  }else {
    print('Cálculo inválido!');
  }
}

Número 5:

void main() {
  
  double? resultado;
  
  print(resultado!);
}

/*
 * Error: Unexpected null value., error: Error: Unexpected null value.
 * 
 * utilizando o operador ! ele quebra a proteção contra null do dart podendo crashar o programa todo durante a execução, prezando por segurança devemos utilizar ??
 */
