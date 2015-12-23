//
//  Carro.m
//  OlaObjectiveC
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "Carro.h"
#import "VelocidadeException.h"

@interface Carro ()
- (void) imprimirPrivado;
@end

@implementation Carro

- (Carro *)initWithNome:(NSString *)_nome andAno:(int)_ano {
    self = [super init];
    if (self) {
        // se inicializacao foi bem sucedida
        [self setNome:_nome];
        [self setAno:_ano];
    }
    return self;
}

@synthesize modelo;
@synthesize descricao;

- (void) setNome:(NSString *)_nome {
    nome = _nome;
}

- (NSString *)getNome {
    return nome;
}

- (void)setAno:(int)_ano {
    ano = _ano;
}

- (int)getAno {
    return ano;
}

- (void)acelerarComVelocidade:(int)velocidade eDistancia:(int)distancia {
    NSLog(@"Acelerar com velocidade: %d km/H e distancia: %d metros", velocidade, distancia);
    if (velocidade > 120) {
        //throw exception
        NSException *e = [VelocidadeException exceptionWithName: @"VelocidadeException" reason: @"Velocidade não permitida, dirija com cuidado!" userInfo: nil];
        @throw e;
    }
}

- (void)imprimir {
    [self imprimirPrivado];
}

#pragma mark - protocolo combustivel
- (void)abastecerComAlcool {
    NSLog(@"Abastecendo com alcool");
}

- (void)abastecerComGasolina {
    NSLog(@"Abastecendo com gasolina");
}

#pragma mark - protocolo privado
- (void)imprimirPrivado {
    NSLog(@"Modelo: %@, Descricao: %@", self.modelo, self.descricao);
}

@end
