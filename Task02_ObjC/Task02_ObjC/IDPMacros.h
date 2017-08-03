//
//  IDPMacros.h
//  Task02_ObjC
//
//  Created by Student003 on 5/11/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#define IDPDeclareConstant(type, name) extern type const name;

#define IDPInitConstant(type, name, value) type const name = value;
#define IDPInitConstantRange(type, name, value1, value2) type const name = { value1, value2 };

#define IDPStaticConstant(type, name, value) static type const name = value;
#define IDPStaticConstantRange(type, name, value1, value2) static type const name = { value1, value2 };
