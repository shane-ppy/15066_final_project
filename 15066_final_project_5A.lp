\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x488fe8ee2feb43bf
Minimize
  10 Fuel[0] + 17.2 Fuel[1] + 6.1 Fuel[2] + 1.75 Fuel[3] + 6.1 Fuel[4]
   + 4.1 Fuel[5] + 0 C13
Subject To
 R0: Fuel[0] + Fuel[1] + Fuel[2] + Fuel[3] + Fuel[4] + Fuel[5] + Fuel[6]
   >= 59786
 R1: 820 Fuel[0] + 490 Fuel[1] + 12 Fuel[2] + 24 Fuel[3] + 11.5 Fuel[4]
   + 44.5 Fuel[5] <= 1.38e+08
 R2: Fuel[0] - 59786 C7 <= 0
 R3: Fuel[1] - 59786 C8 <= 0
 R4: Fuel[2] - 19729.38 C9 <= 0
 R5: Fuel[3] - 59786 C10 <= 0
 R6: Fuel[4] - 19729.38 C11 <= 0
 R7: Fuel[5] - 14946.5 C12 <= 0
 R8: Fuel[6] <= 0
 R9: Fuel[0] >= 0
 R10: Fuel[1] >= 0
 R11: Fuel[2] - 11957.2 C9 >= 0
 R12: Fuel[3] >= 0
 R13: Fuel[4] >= 0
 R14: Fuel[5] >= 0
 R15: Fuel[6] >= 0
Bounds
Binaries
 C7 C8 C9 C10 C11 C12 C13
End
