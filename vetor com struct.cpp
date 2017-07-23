/* 5�
seja a segunte defini��o de estrutura
struct venda 
{
    int numNotaFiscal;
    float valorVenda;
    int codvendedor;
    float valorComissao;
} ;
Crie um vetor global para 30 vendas realizadas numa loja. Em seguida, chamar as seguntes fun��es:
Receber dados: Receber os dados por digita��o das vendas com exce��o do valor de comiss�o;
Calcular comiss�o: Calcular, visualizar e armazenar no vetor o valor da comiss�o que cada 
vendedor ir� receber pela venda realizada. Para valores de vendas menores ou iguais a um valor 
recebido como par�metro, calcular 6% de comiss�o sobre o valor de venda e, para valores maiores
calcular 8% de comiss�o sobre o valor da venda.
*/
 
#include<iostream.h>
#include<stdlib.h>
  
int i;

struct venda {
    int numNotaFiscal;
    float valorVenda;
    int codvendedor;
    float valorComissao;
} vetor[30];

int main() {
    float valorBase;
    
    void ReceberDados();
    void CalcularComissao(float valorBase);
    
    ReceberDados();
    
    cout<<"\nDigite um valor para realizar o calculo da comissao dos vendedores: ";
    cin>>valorBase;
    
    CalcularComissao(valorBase);
    
    cout<<"\n"; 
    for(i = 0; i < 30; i++) {
          cout<<"A comissao do Vendedor "<<vetor[i].codvendedor<<": "<<vetor[i].valorComissao<<"\n";
    }
    
    cout<<"\n\n"; 
    system("pause");
}

void ReceberDados (){
      for(i = 0; i < 30; i++) {            
            cout<<"Digite o numero da Nota Fiscal: ";
            cin>>vetor[i].numNotaFiscal;
            
            cout<<"Digite o valor da venda: ";
            cin>>vetor[i].valorVenda;
            
            cout<<"Digite o codigo do vendedor: ";
            cin>>vetor[i].codvendedor;
      }
}

void CalcularComissao (float valorBase){
     for(i = 0; i < 30; i++) { 
         if (vetor[i].valorVenda <= valorBase) {
            vetor[i].valorComissao = ((vetor[i].valorVenda * 6) / 100);
                 
         } else {
            vetor[i].valorComissao = ((vetor[i].valorVenda * 8) / 100); 
         } 
     }     
}

