//
//  main.m
//  OlaObjectiveC
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carro.h"
#import "VelocidadeException.h"
#import "PostoDeGasolina.h"
#import "NSString+Utils.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Carro *c = [[Carro alloc] initWithNome:@" Fusca " andAno:1934];
        //[c init];
        //[c setNome:@"Fusca"];
        //[c setAno:1934];
        
        NSString *nome = [c getNome];
        int ano = [c getAno];
        c.modelo = @"Antigo";
        c.descricao = @"Carro fabricado com pecas totalmente originais";
        
        NSLog(@"Carro [%@] [%d]", nome, ano);
        //NSLog(@"Mais informações: %@, %@", c.modelo, c.descricao);
        
        [c imprimir];
        NSLog(@"Carro trim: [%@]", [[c getNome] trim]);
        
        [c acelerarComVelocidade:110 eDistancia:1000];
        @try {
            [c acelerarComVelocidade:130 eDistancia:1000];
        }
        @catch (VelocidadeException *exception) {
            NSLog(@"Erro: %@", [exception reason]);
        }
        @finally {
        }
        
        // chamada ao metodo static da classe PostoDeGasolina
        [PostoDeGasolina abastecerComCarroAlcool:c];
    }
    return 0;
}
