//
//  PostoDeGasolina.h
//  OlaObjectiveC
//
//  Created by André Guedes on 17/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombustivelAlcool.h"
#import "CombustivelGasolina.h"

@interface PostoDeGasolina : NSObject

+ (void) abastecerComCarroAlcool:(NSObject<CombustivelAlcool> *) tipoAlcool;
+ (void) abastecerComCarroGasolina:(NSObject<CombustivelGasolina> *) tipoGasolina;

@end
