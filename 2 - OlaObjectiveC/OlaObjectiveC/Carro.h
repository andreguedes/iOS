//
//  Carro.h
//  OlaObjectiveC
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombustivelFlex.h"

@interface Carro : NSObject <CombustivelFlex> {
    NSString *nome;
    int ano;
}

@property(nonatomic, retain)NSString* modelo;
@property(nonatomic, retain)NSString* descricao;

// um quase construtor
-(Carro*) initWithNome:(NSString *)_nome andAno:(int)_ano;

-(void) setNome:(NSString*)_nome;
-(NSString *) getNome;
-(void) setAno:(int)_ano;
-(int) getAno;
-(void) acelerarComVelocidade:(int) velocidade eDistancia:(int) distancia;
-(void) imprimir;

@end
