//
//  PostoDeGasolina.m
//  OlaObjectiveC
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "PostoDeGasolina.h"

@implementation PostoDeGasolina

+ (void)abastecerComCarroAlcool:(NSObject<CombustivelAlcool> *)tipoAlcool {
    [tipoAlcool abastecerComAlcool];
}

+ (void)abastecerComCarroGasolina:(NSObject<CombustivelGasolina> *)tipoGasolina {
    [tipoGasolina abastecerComGasolina];
}

@end
