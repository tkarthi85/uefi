//
//  Copyright (c) 2011-2012, ARM Limited. All rights reserved.
//
//  This program and the accompanying materials
//  are licensed and made available under the terms and conditions of the BSD License
//  which accompanies this distribution.  The full text of the license may be found at
//  http://opensource.org/licenses/bsd-license.php
//
//  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
//  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
//
//

  INCLUDE AsmMacroExport.inc
  INCLUDE AsmMacroIoLib.inc


  PRESERVE8

// IN None
// OUT r0 = SCU Base Address
 RVCT_ASM_EXPORT ArmGetScuBaseAddress
  // Read Configuration Base Address Register. ArmCBar cannot be called to get
  // the Configuration BAR as a stack is not necessary setup. The SCU is at the
  // offset 0x0000 from the Private Memory Region.
  mrc   p15, 4, r0, c15, c0, 0
  bx  lr

  END
