\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x488fe8ee2feb43bf
Minimize
  0.08933 Fuel[0] + 0.04272 Fuel[1] + 0.071 Fuel[2] + 0.05712 Fuel[3]
   + 0.03107 Fuel[4] + 0.02322 Fuel[5] + 0.03627 Fuel[6] + 0 C13
Subject To
 R0: Fuel[0] + Fuel[1] + Fuel[2] + Fuel[3] + Fuel[4] + Fuel[5] + Fuel[6]
   >= 1.34328945e+11
 R1: 820 Fuel[0] + 490 Fuel[1] + 12 Fuel[2] + 24 Fuel[3] + 11.5 Fuel[4]
   + 44.5 Fuel[5] <= 1.2276e+13
 R2: Fuel[0] - 1.1417960325e+11 C7 <= 0
 R3: Fuel[1] - 1.1686618215e+11 C8 <= 0
 R4: Fuel[2] - 1.208960505e+11 C9 <= 0
 R5: Fuel[3] - 7.52242092e+10 C10 <= 0
 R6: Fuel[4] - 5.3731578e+10 C11 <= 0
 R7: Fuel[5] - 3.895539405e+10 C12 <= 0
 R8: Fuel[6] <= 0
 R9: Fuel[0] >= 0
 R10: Fuel[1] >= 0
 R11: Fuel[2] - 3.358223625e+10 C9 >= 0
 R12: Fuel[3] >= 0
 R13: Fuel[4] >= 0
 R14: Fuel[5] >= 0
 R15: Fuel[6] >= 0
Bounds
Binaries
 C7 C8 C9 C10 C11 C12 C13
End
