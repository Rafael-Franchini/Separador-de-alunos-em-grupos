///Sorteador de grupos
///Rafael Alexandre Lima Franchini
///29/10/2025
import "dart:math"; //importa Random()

//Lista com nomes dos alunos
List<String> nomes = [
  "Melissa",
  "Ana julia",
  "Alice",
  "Lora",
  "Guilherme",
  "Joca",
  "Ramon",
  "Henrique",
  "thomaz",
];
//Armazena integrates dos grupos
List<String> grupo1 = [];
List<String> grupo2 = [];
List<String> grupo3 = [];
List<String> grupo4 = [];
List<int> Max = []; //controle do numero de alunos nos grupos
//loop principal
void main() {
  int NumMax = 3; //Numero maximo por grupo
  int NumGrupos = 3; //Numero de grupos
  //preenchendo limitadores
  for (int j = 0; j < NumGrupos; j++) {
    Max.add(0); //inicia contadores zerados
  }
  var random = Random(); //instancia da biblioteca de numeros aleatorios
  //varre a lista de nomes distribuindo eles
  for (int i = 0; i < nomes.length; i++) {
    int randomNumberInRange =
        1 +
        random.nextInt(
          (NumGrupos + 1) - 1,
        ); //sorteia um numero entre 1 e o numero de grupos
    for (int k = 0; k < Max.length; k++) {
      //verifica se os grupos estao cheios
      if (Max[randomNumberInRange - 1] == NumMax) {
        //verifica se o grupo sorteado esta cheio
        if (randomNumberInRange == NumGrupos) {
          //se o grupo sorteado for o ultimo grupo e estiver cheio
          randomNumberInRange = 1; //define grupo sortedo para 1
        } else {
          // se não for o ultimo grupo
          randomNumberInRange++; //sobe para o proximo grupo
        }
      } else {
        //se não estiver cheio
        break; //segue o codigo fora do loop
      }
    }
    switch (randomNumberInRange) {
      //adiciona no grupo
      case 1: // caso o grupo sorteado seja o 1
        grupo1.add(nomes[i]); //adiciona aluno no 1
        Max[0]++; //conta que tem mais um aluno no grupo1
      case 2: // caso o grupo sorteado seja o 2
        grupo2.add(nomes[i]); //adiciona aluno no 2
        Max[1]++; //conta que tem mais um aluno no grupo2
      case 3: // caso o grupo sorteado seja o 3
        grupo3.add(nomes[i]); //adiciona aluno no 3
        Max[2]++; //conta que tem mais um aluno no grupo3
      case 4: // caso o grupo sorteado seja o 4
        grupo4.add(nomes[i]); //adiciona aluno no 4
        Max[3]++; //conta que tem mais um aluno no grupo4
    }
  }
  print(
    //exibe resultados
    "Grupo 1 : $grupo1 \nGrupo 2 : $grupo2 \nGrupo 3 : $grupo3 \nGrupo 4 : $grupo4",
  );
}
