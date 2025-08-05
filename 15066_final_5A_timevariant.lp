\ Model Hourly_Energy_Dispatch_with_Battery
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9922cf28d28b0757
Minimize
  89.33 generation[0,0] + 89.33 generation[0,1] + 89.33 generation[0,2]
   + 89.33 generation[0,3] + 89.33 generation[0,4] + 89.33 generation[0,5]
   + 89.33 generation[0,6] + 89.33 generation[0,7] + 89.33 generation[0,8]
   + 89.33 generation[0,9] + 89.33 generation[0,10]
   + 89.33 generation[0,11] + 89.33 generation[0,12]
   + 89.33 generation[0,13] + 89.33 generation[0,14]
   + 89.33 generation[0,15] + 89.33 generation[0,16]
   + 89.33 generation[0,17] + 89.33 generation[0,18]
   + 89.33 generation[0,19] + 89.33 generation[0,20]
   + 89.33 generation[0,21] + 89.33 generation[0,22]
   + 89.33 generation[0,23] + 42.72 generation[1,0] + 42.72 generation[1,1]
   + 42.72 generation[1,2] + 42.72 generation[1,3] + 42.72 generation[1,4]
   + 42.72 generation[1,5] + 42.72 generation[1,6] + 42.72 generation[1,7]
   + 42.72 generation[1,8] + 42.72 generation[1,9] + 42.72 generation[1,10]
   + 42.72 generation[1,11] + 42.72 generation[1,12]
   + 42.72 generation[1,13] + 42.72 generation[1,14]
   + 42.72 generation[1,15] + 42.72 generation[1,16]
   + 42.72 generation[1,17] + 42.72 generation[1,18]
   + 42.72 generation[1,19] + 42.72 generation[1,20]
   + 42.72 generation[1,21] + 42.72 generation[1,22]
   + 42.72 generation[1,23] + 71 generation[2,0] + 71 generation[2,1]
   + 71 generation[2,2] + 71 generation[2,3] + 71 generation[2,4]
   + 71 generation[2,5] + 71 generation[2,6] + 71 generation[2,7]
   + 71 generation[2,8] + 71 generation[2,9] + 71 generation[2,10]
   + 71 generation[2,11] + 71 generation[2,12] + 71 generation[2,13]
   + 71 generation[2,14] + 71 generation[2,15] + 71 generation[2,16]
   + 71 generation[2,17] + 71 generation[2,18] + 71 generation[2,19]
   + 71 generation[2,20] + 71 generation[2,21] + 71 generation[2,22]
   + 71 generation[2,23] + 57.12 generation[3,0] + 57.12 generation[3,1]
   + 57.12 generation[3,2] + 57.12 generation[3,3] + 57.12 generation[3,4]
   + 57.12 generation[3,5] + 57.12 generation[3,6] + 57.12 generation[3,7]
   + 57.12 generation[3,8] + 57.12 generation[3,9] + 57.12 generation[3,10]
   + 57.12 generation[3,11] + 57.12 generation[3,12]
   + 57.12 generation[3,13] + 57.12 generation[3,14]
   + 57.12 generation[3,15] + 57.12 generation[3,16]
   + 57.12 generation[3,17] + 57.12 generation[3,18]
   + 57.12 generation[3,19] + 57.12 generation[3,20]
   + 57.12 generation[3,21] + 57.12 generation[3,22]
   + 57.12 generation[3,23] + 31.07 generation[4,0] + 31.07 generation[4,1]
   + 31.07 generation[4,2] + 31.07 generation[4,3] + 31.07 generation[4,4]
   + 31.07 generation[4,5] + 31.07 generation[4,6] + 31.07 generation[4,7]
   + 31.07 generation[4,8] + 31.07 generation[4,9] + 31.07 generation[4,10]
   + 31.07 generation[4,11] + 31.07 generation[4,12]
   + 31.07 generation[4,13] + 31.07 generation[4,14]
   + 31.07 generation[4,15] + 31.07 generation[4,16]
   + 31.07 generation[4,17] + 31.07 generation[4,18]
   + 31.07 generation[4,19] + 31.07 generation[4,20]
   + 31.07 generation[4,21] + 31.07 generation[4,22]
   + 31.07 generation[4,23] + 23.22 generation[5,0] + 23.22 generation[5,1]
   + 23.22 generation[5,2] + 23.22 generation[5,3] + 23.22 generation[5,4]
   + 23.22 generation[5,5] + 23.22 generation[5,6] + 23.22 generation[5,7]
   + 23.22 generation[5,8] + 23.22 generation[5,9] + 23.22 generation[5,10]
   + 23.22 generation[5,11] + 23.22 generation[5,12]
   + 23.22 generation[5,13] + 23.22 generation[5,14]
   + 23.22 generation[5,15] + 23.22 generation[5,16]
   + 23.22 generation[5,17] + 23.22 generation[5,18]
   + 23.22 generation[5,19] + 23.22 generation[5,20]
   + 23.22 generation[5,21] + 23.22 generation[5,22]
   + 23.22 generation[5,23]
Subject To
 DemandFulfillment[0]: generation[0,0] + generation[1,0] + generation[2,0]
   + generation[3,0] + generation[4,0] + generation[5,0] - charge[0]
   + discharge[0] = 21406.55228049789
 DemandFulfillment[1]: generation[0,1] + generation[1,1] + generation[2,1]
   + generation[3,1] + generation[4,1] + generation[5,1] - charge[1]
   + discharge[1] = 20693.00053781462
 DemandFulfillment[2]: generation[0,2] + generation[1,2] + generation[2,2]
   + generation[3,2] + generation[4,2] + generation[5,2] - charge[2]
   + discharge[2] = 20336.22466647299
 DemandFulfillment[3]: generation[0,3] + generation[1,3] + generation[2,3]
   + generation[3,3] + generation[4,3] + generation[5,3] - charge[3]
   + discharge[3] = 19979.44879513136
 DemandFulfillment[4]: generation[0,4] + generation[1,4] + generation[2,4]
   + generation[3,4] + generation[4,4] + generation[5,4] - charge[4]
   + discharge[4] = 20336.22466647299
 DemandFulfillment[5]: generation[0,5] + generation[1,5] + generation[2,5]
   + generation[3,5] + generation[4,5] + generation[5,5] - charge[5]
   + discharge[5] = 21763.32815183952
 DemandFulfillment[6]: generation[0,6] + generation[1,6] + generation[2,6]
   + generation[3,6] + generation[4,6] + generation[5,6] - charge[6]
   + discharge[6] = 24974.3109939142
 DemandFulfillment[7]: generation[0,7] + generation[1,7] + generation[2,7]
   + generation[3,7] + generation[4,7] + generation[5,7] - charge[7]
   + discharge[7] = 26758.19035062236
 DemandFulfillment[8]: generation[0,8] + generation[1,8] + generation[2,8]
   + generation[3,8] + generation[4,8] + generation[5,8] - charge[8]
   + discharge[8] = 27114.96622196399
 DemandFulfillment[9]: generation[0,9] + generation[1,9] + generation[2,9]
   + generation[3,9] + generation[4,9] + generation[5,9] - charge[9]
   + discharge[9] = 27471.74209330562
 DemandFulfillment[10]: generation[0,10] + generation[1,10]
   + generation[2,10] + generation[3,10] + generation[4,10]
   + generation[5,10] - charge[10] + discharge[10] = 27471.74209330562
 DemandFulfillment[11]: generation[0,11] + generation[1,11]
   + generation[2,11] + generation[3,11] + generation[4,11]
   + generation[5,11] - charge[11] + discharge[11] = 27828.51796464725
 DemandFulfillment[12]: generation[0,12] + generation[1,12]
   + generation[2,12] + generation[3,12] + generation[4,12]
   + generation[5,12] - charge[12] + discharge[12] = 27828.51796464725
 DemandFulfillment[13]: generation[0,13] + generation[1,13]
   + generation[2,13] + generation[3,13] + generation[4,13]
   + generation[5,13] - charge[13] + discharge[13] = 28542.06970733052
 DemandFulfillment[14]: generation[0,14] + generation[1,14]
   + generation[2,14] + generation[3,14] + generation[4,14]
   + generation[5,14] - charge[14] + discharge[14] = 29255.62145001378
 DemandFulfillment[15]: generation[0,15] + generation[1,15]
   + generation[2,15] + generation[3,15] + generation[4,15]
   + generation[5,15] - charge[15] + discharge[15] = 30682.72493538031
 DemandFulfillment[16]: generation[0,16] + generation[1,16]
   + generation[2,16] + generation[3,16] + generation[4,16]
   + generation[5,16] - charge[16] + discharge[16] = 31396.27667806357
 DemandFulfillment[17]: generation[0,17] + generation[1,17]
   + generation[2,17] + generation[3,17] + generation[4,17]
   + generation[5,17] - charge[17] + discharge[17] = 32109.82842074683
 DemandFulfillment[18]: generation[0,18] + generation[1,18]
   + generation[2,18] + generation[3,18] + generation[4,18]
   + generation[5,18] - charge[18] + discharge[18] = 33893.70777745498
 DemandFulfillment[19]: generation[0,19] + generation[1,19]
   + generation[2,19] + generation[3,19] + generation[4,19]
   + generation[5,19] - charge[19] + discharge[19] = 35677.58713416314
 DemandFulfillment[20]: generation[0,20] + generation[1,20]
   + generation[2,20] + generation[3,20] + generation[4,20]
   + generation[5,20] - charge[20] + discharge[20] = 34964.03539147988
 DemandFulfillment[21]: generation[0,21] + generation[1,21]
   + generation[2,21] + generation[3,21] + generation[4,21]
   + generation[5,21] - charge[21] + discharge[21] = 32109.82842074683
 DemandFulfillment[22]: generation[0,22] + generation[1,22]
   + generation[2,22] + generation[3,22] + generation[4,22]
   + generation[5,22] - charge[22] + discharge[22] = 28542.06970733052
 DemandFulfillment[23]: generation[0,23] + generation[1,23]
   + generation[2,23] + generation[3,23] + generation[4,23]
   + generation[5,23] - charge[23] + discharge[23] = 24974.3109939142
 GenCapacity[0,0]: generation[0,0] <= 20000
 GenCapacity[0,1]: generation[0,1] <= 20000
 GenCapacity[0,2]: generation[0,2] <= 20000
 GenCapacity[0,3]: generation[0,3] <= 20000
 GenCapacity[0,4]: generation[0,4] <= 20000
 GenCapacity[0,5]: generation[0,5] <= 20000
 GenCapacity[0,6]: generation[0,6] <= 20000
 GenCapacity[0,7]: generation[0,7] <= 20000
 GenCapacity[0,8]: generation[0,8] <= 20000
 GenCapacity[0,9]: generation[0,9] <= 20000
 GenCapacity[0,10]: generation[0,10] <= 20000
 GenCapacity[0,11]: generation[0,11] <= 20000
 GenCapacity[0,12]: generation[0,12] <= 20000
 GenCapacity[0,13]: generation[0,13] <= 20000
 GenCapacity[0,14]: generation[0,14] <= 20000
 GenCapacity[0,15]: generation[0,15] <= 20000
 GenCapacity[0,16]: generation[0,16] <= 20000
 GenCapacity[0,17]: generation[0,17] <= 20000
 GenCapacity[0,18]: generation[0,18] <= 20000
 GenCapacity[0,19]: generation[0,19] <= 20000
 GenCapacity[0,20]: generation[0,20] <= 20000
 GenCapacity[0,21]: generation[0,21] <= 20000
 GenCapacity[0,22]: generation[0,22] <= 20000
 GenCapacity[0,23]: generation[0,23] <= 20000
 GenCapacity[1,0]: generation[1,0] <= 6760
 GenCapacity[1,1]: generation[1,1] <= 6760
 GenCapacity[1,2]: generation[1,2] <= 6760
 GenCapacity[1,3]: generation[1,3] <= 6760
 GenCapacity[1,4]: generation[1,4] <= 6760
 GenCapacity[1,5]: generation[1,5] <= 6760
 GenCapacity[1,6]: generation[1,6] <= 6760
 GenCapacity[1,7]: generation[1,7] <= 6760
 GenCapacity[1,8]: generation[1,8] <= 6760
 GenCapacity[1,9]: generation[1,9] <= 6760
 GenCapacity[1,10]: generation[1,10] <= 6760
 GenCapacity[1,11]: generation[1,11] <= 6760
 GenCapacity[1,12]: generation[1,12] <= 6760
 GenCapacity[1,13]: generation[1,13] <= 6760
 GenCapacity[1,14]: generation[1,14] <= 6760
 GenCapacity[1,15]: generation[1,15] <= 6760
 GenCapacity[1,16]: generation[1,16] <= 6760
 GenCapacity[1,17]: generation[1,17] <= 6760
 GenCapacity[1,18]: generation[1,18] <= 6760
 GenCapacity[1,19]: generation[1,19] <= 6760
 GenCapacity[1,20]: generation[1,20] <= 6760
 GenCapacity[1,21]: generation[1,21] <= 6760
 GenCapacity[1,22]: generation[1,22] <= 6760
 GenCapacity[1,23]: generation[1,23] <= 6760
 GenCapacity[2,0]: generation[2,0] <= 12300
 GenCapacity[2,1]: generation[2,1] <= 12300
 GenCapacity[2,2]: generation[2,2] <= 12300
 GenCapacity[2,3]: generation[2,3] <= 12300
 GenCapacity[2,4]: generation[2,4] <= 12300
 GenCapacity[2,5]: generation[2,5] <= 12300
 GenCapacity[2,6]: generation[2,6] <= 12300
 GenCapacity[2,7]: generation[2,7] <= 12300
 GenCapacity[2,8]: generation[2,8] <= 12300
 GenCapacity[2,9]: generation[2,9] <= 12300
 GenCapacity[2,10]: generation[2,10] <= 12300
 GenCapacity[2,11]: generation[2,11] <= 12300
 GenCapacity[2,12]: generation[2,12] <= 12300
 GenCapacity[2,13]: generation[2,13] <= 12300
 GenCapacity[2,14]: generation[2,14] <= 12300
 GenCapacity[2,15]: generation[2,15] <= 12300
 GenCapacity[2,16]: generation[2,16] <= 12300
 GenCapacity[2,17]: generation[2,17] <= 12300
 GenCapacity[2,18]: generation[2,18] <= 12300
 GenCapacity[2,19]: generation[2,19] <= 12300
 GenCapacity[2,20]: generation[2,20] <= 12300
 GenCapacity[2,21]: generation[2,21] <= 12300
 GenCapacity[2,22]: generation[2,22] <= 12300
 GenCapacity[2,23]: generation[2,23] <= 12300
 GenCapacity[3,0]: generation[3,0] <= 12600
 GenCapacity[3,1]: generation[3,1] <= 12600
 GenCapacity[3,2]: generation[3,2] <= 12600
 GenCapacity[3,3]: generation[3,3] <= 12600
 GenCapacity[3,4]: generation[3,4] <= 12600
 GenCapacity[3,5]: generation[3,5] <= 12600
 GenCapacity[3,6]: generation[3,6] <= 12600
 GenCapacity[3,7]: generation[3,7] <= 12600
 GenCapacity[3,8]: generation[3,8] <= 12600
 GenCapacity[3,9]: generation[3,9] <= 12600
 GenCapacity[3,10]: generation[3,10] <= 12600
 GenCapacity[3,11]: generation[3,11] <= 12600
 GenCapacity[3,12]: generation[3,12] <= 12600
 GenCapacity[3,13]: generation[3,13] <= 12600
 GenCapacity[3,14]: generation[3,14] <= 12600
 GenCapacity[3,15]: generation[3,15] <= 12600
 GenCapacity[3,16]: generation[3,16] <= 12600
 GenCapacity[3,17]: generation[3,17] <= 12600
 GenCapacity[3,18]: generation[3,18] <= 12600
 GenCapacity[3,19]: generation[3,19] <= 12600
 GenCapacity[3,20]: generation[3,20] <= 12600
 GenCapacity[3,21]: generation[3,21] <= 12600
 GenCapacity[3,22]: generation[3,22] <= 12600
 GenCapacity[3,23]: generation[3,23] <= 12600
 GenCapacity[4,0]: generation[4,0] <= 7000
 GenCapacity[4,1]: generation[4,1] <= 7280
 GenCapacity[4,2]: generation[4,2] <= 7420
 GenCapacity[4,3]: generation[4,3] <= 7140
 GenCapacity[4,4]: generation[4,4] <= 6720
 GenCapacity[4,5]: generation[4,5] <= 6300
 GenCapacity[4,6]: generation[4,6] <= 5880
 GenCapacity[4,7]: generation[4,7] <= 6020
 GenCapacity[4,8]: generation[4,8] <= 6300
 GenCapacity[4,9]: generation[4,9] <= 5600
 GenCapacity[4,10]: generation[4,10] <= 4900
 GenCapacity[4,11]: generation[4,11] <= 4200
 GenCapacity[4,12]: generation[4,12] <= 3920
 GenCapacity[4,13]: generation[4,13] <= 4200
 GenCapacity[4,14]: generation[4,14] <= 4480
 GenCapacity[4,15]: generation[4,15] <= 4900
 GenCapacity[4,16]: generation[4,16] <= 5600
 GenCapacity[4,17]: generation[4,17] <= 6300
 GenCapacity[4,18]: generation[4,18] <= 7000
 GenCapacity[4,19]: generation[4,19] <= 7700
 GenCapacity[4,20]: generation[4,20] <= 8400
 GenCapacity[4,21]: generation[4,21] <= 8120
 GenCapacity[4,22]: generation[4,22] <= 7700
 GenCapacity[4,23]: generation[4,23] <= 7280
 GenCapacity[5,0]: generation[5,0] <= 0
 GenCapacity[5,1]: generation[5,1] <= 0
 GenCapacity[5,2]: generation[5,2] <= 0
 GenCapacity[5,3]: generation[5,3] <= 0
 GenCapacity[5,4]: generation[5,4] <= 0
 GenCapacity[5,5]: generation[5,5] <= 2000
 GenCapacity[5,6]: generation[5,6] <= 6000
 GenCapacity[5,7]: generation[5,7] <= 10000
 GenCapacity[5,8]: generation[5,8] <= 14000
 GenCapacity[5,9]: generation[5,9] <= 17000
 GenCapacity[5,10]: generation[5,10] <= 19000
 GenCapacity[5,11]: generation[5,11] <= 20000
 GenCapacity[5,12]: generation[5,12] <= 20000
 GenCapacity[5,13]: generation[5,13] <= 19600
 GenCapacity[5,14]: generation[5,14] <= 17000
 GenCapacity[5,15]: generation[5,15] <= 14000
 GenCapacity[5,16]: generation[5,16] <= 10000
 GenCapacity[5,17]: generation[5,17] <= 4000
 GenCapacity[5,18]: generation[5,18] <= 0
 GenCapacity[5,19]: generation[5,19] <= 0
 GenCapacity[5,20]: generation[5,20] <= 0
 GenCapacity[5,21]: generation[5,21] <= 0
 GenCapacity[5,22]: generation[5,22] <= 0
 GenCapacity[5,23]: generation[5,23] <= 0
 CO2_Limit: 1.08 generation[0,0] + 1.08 generation[0,1]
   + 1.08 generation[0,2] + 1.08 generation[0,3] + 1.08 generation[0,4]
   + 1.08 generation[0,5] + 1.08 generation[0,6] + 1.08 generation[0,7]
   + 1.08 generation[0,8] + 1.08 generation[0,9] + 1.08 generation[0,10]
   + 1.08 generation[0,11] + 1.08 generation[0,12] + 1.08 generation[0,13]
   + 1.08 generation[0,14] + 1.08 generation[0,15] + 1.08 generation[0,16]
   + 1.08 generation[0,17] + 1.08 generation[0,18] + 1.08 generation[0,19]
   + 1.08 generation[0,20] + 1.08 generation[0,21] + 1.08 generation[0,22]
   + 1.08 generation[0,23] + 0.4 generation[1,0] + 0.4 generation[1,1]
   + 0.4 generation[1,2] + 0.4 generation[1,3] + 0.4 generation[1,4]
   + 0.4 generation[1,5] + 0.4 generation[1,6] + 0.4 generation[1,7]
   + 0.4 generation[1,8] + 0.4 generation[1,9] + 0.4 generation[1,10]
   + 0.4 generation[1,11] + 0.4 generation[1,12] + 0.4 generation[1,13]
   + 0.4 generation[1,14] + 0.4 generation[1,15] + 0.4 generation[1,16]
   + 0.4 generation[1,17] + 0.4 generation[1,18] + 0.4 generation[1,19]
   + 0.4 generation[1,20] + 0.4 generation[1,21] + 0.4 generation[1,22]
   + 0.4 generation[1,23] + 0.02 generation[2,0] + 0.02 generation[2,1]
   + 0.02 generation[2,2] + 0.02 generation[2,3] + 0.02 generation[2,4]
   + 0.02 generation[2,5] + 0.02 generation[2,6] + 0.02 generation[2,7]
   + 0.02 generation[2,8] + 0.02 generation[2,9] + 0.02 generation[2,10]
   + 0.02 generation[2,11] + 0.02 generation[2,12] + 0.02 generation[2,13]
   + 0.02 generation[2,14] + 0.02 generation[2,15] + 0.02 generation[2,16]
   + 0.02 generation[2,17] + 0.02 generation[2,18] + 0.02 generation[2,19]
   + 0.02 generation[2,20] + 0.02 generation[2,21] + 0.02 generation[2,22]
   + 0.02 generation[2,23] + 0.02 generation[3,0] + 0.02 generation[3,1]
   + 0.02 generation[3,2] + 0.02 generation[3,3] + 0.02 generation[3,4]
   + 0.02 generation[3,5] + 0.02 generation[3,6] + 0.02 generation[3,7]
   + 0.02 generation[3,8] + 0.02 generation[3,9] + 0.02 generation[3,10]
   + 0.02 generation[3,11] + 0.02 generation[3,12] + 0.02 generation[3,13]
   + 0.02 generation[3,14] + 0.02 generation[3,15] + 0.02 generation[3,16]
   + 0.02 generation[3,17] + 0.02 generation[3,18] + 0.02 generation[3,19]
   + 0.02 generation[3,20] + 0.02 generation[3,21] + 0.02 generation[3,22]
   + 0.02 generation[3,23] + 0.02 generation[4,0] + 0.02 generation[4,1]
   + 0.02 generation[4,2] + 0.02 generation[4,3] + 0.02 generation[4,4]
   + 0.02 generation[4,5] + 0.02 generation[4,6] + 0.02 generation[4,7]
   + 0.02 generation[4,8] + 0.02 generation[4,9] + 0.02 generation[4,10]
   + 0.02 generation[4,11] + 0.02 generation[4,12] + 0.02 generation[4,13]
   + 0.02 generation[4,14] + 0.02 generation[4,15] + 0.02 generation[4,16]
   + 0.02 generation[4,17] + 0.02 generation[4,18] + 0.02 generation[4,19]
   + 0.02 generation[4,20] + 0.02 generation[4,21] + 0.02 generation[4,22]
   + 0.02 generation[4,23] + 0.04 generation[5,0] + 0.04 generation[5,1]
   + 0.04 generation[5,2] + 0.04 generation[5,3] + 0.04 generation[5,4]
   + 0.04 generation[5,5] + 0.04 generation[5,6] + 0.04 generation[5,7]
   + 0.04 generation[5,8] + 0.04 generation[5,9] + 0.04 generation[5,10]
   + 0.04 generation[5,11] + 0.04 generation[5,12] + 0.04 generation[5,13]
   + 0.04 generation[5,14] + 0.04 generation[5,15] + 0.04 generation[5,16]
   + 0.04 generation[5,17] + 0.04 generation[5,18] + 0.04 generation[5,19]
   + 0.04 generation[5,20] + 0.04 generation[5,21] + 0.04 generation[5,22]
   + 0.04 generation[5,23] <= 285205.4794520548
 SoC_Initial: - 0.95 charge[0] + discharge[0] + soc[0] = 43200
 SoC_Evolution[1]: - 0.95 charge[1] + discharge[1] - soc[0] + soc[1] = 0
 SoC_Evolution[2]: - 0.95 charge[2] + discharge[2] - soc[1] + soc[2] = 0
 SoC_Evolution[3]: - 0.95 charge[3] + discharge[3] - soc[2] + soc[3] = 0
 SoC_Evolution[4]: - 0.95 charge[4] + discharge[4] - soc[3] + soc[4] = 0
 SoC_Evolution[5]: - 0.95 charge[5] + discharge[5] - soc[4] + soc[5] = 0
 SoC_Evolution[6]: - 0.95 charge[6] + discharge[6] - soc[5] + soc[6] = 0
 SoC_Evolution[7]: - 0.95 charge[7] + discharge[7] - soc[6] + soc[7] = 0
 SoC_Evolution[8]: - 0.95 charge[8] + discharge[8] - soc[7] + soc[8] = 0
 SoC_Evolution[9]: - 0.95 charge[9] + discharge[9] - soc[8] + soc[9] = 0
 SoC_Evolution[10]: - 0.95 charge[10] + discharge[10] - soc[9] + soc[10]
   = 0
 SoC_Evolution[11]: - 0.95 charge[11] + discharge[11] - soc[10] + soc[11]
   = 0
 SoC_Evolution[12]: - 0.95 charge[12] + discharge[12] - soc[11] + soc[12]
   = 0
 SoC_Evolution[13]: - 0.95 charge[13] + discharge[13] - soc[12] + soc[13]
   = 0
 SoC_Evolution[14]: - 0.95 charge[14] + discharge[14] - soc[13] + soc[14]
   = 0
 SoC_Evolution[15]: - 0.95 charge[15] + discharge[15] - soc[14] + soc[15]
   = 0
 SoC_Evolution[16]: - 0.95 charge[16] + discharge[16] - soc[15] + soc[16]
   = 0
 SoC_Evolution[17]: - 0.95 charge[17] + discharge[17] - soc[16] + soc[17]
   = 0
 SoC_Evolution[18]: - 0.95 charge[18] + discharge[18] - soc[17] + soc[18]
   = 0
 SoC_Evolution[19]: - 0.95 charge[19] + discharge[19] - soc[18] + soc[19]
   = 0
 SoC_Evolution[20]: - 0.95 charge[20] + discharge[20] - soc[19] + soc[20]
   = 0
 SoC_Evolution[21]: - 0.95 charge[21] + discharge[21] - soc[20] + soc[21]
   = 0
 SoC_Evolution[22]: - 0.95 charge[22] + discharge[22] - soc[21] + soc[22]
   = 0
 SoC_Evolution[23]: - 0.95 charge[23] + discharge[23] - soc[22] + soc[23]
   = 0
 CyclicSoC: soc[23] >= 43200
Bounds
 charge[0] <= 21600
 charge[1] <= 21600
 charge[2] <= 21600
 charge[3] <= 21600
 charge[4] <= 21600
 charge[5] <= 21600
 charge[6] <= 21600
 charge[7] <= 21600
 charge[8] <= 21600
 charge[9] <= 21600
 charge[10] <= 21600
 charge[11] <= 21600
 charge[12] <= 21600
 charge[13] <= 21600
 charge[14] <= 21600
 charge[15] <= 21600
 charge[16] <= 21600
 charge[17] <= 21600
 charge[18] <= 21600
 charge[19] <= 21600
 charge[20] <= 21600
 charge[21] <= 21600
 charge[22] <= 21600
 charge[23] <= 21600
 discharge[0] <= 21600
 discharge[1] <= 21600
 discharge[2] <= 21600
 discharge[3] <= 21600
 discharge[4] <= 21600
 discharge[5] <= 21600
 discharge[6] <= 21600
 discharge[7] <= 21600
 discharge[8] <= 21600
 discharge[9] <= 21600
 discharge[10] <= 21600
 discharge[11] <= 21600
 discharge[12] <= 21600
 discharge[13] <= 21600
 discharge[14] <= 21600
 discharge[15] <= 21600
 discharge[16] <= 21600
 discharge[17] <= 21600
 discharge[18] <= 21600
 discharge[19] <= 21600
 discharge[20] <= 21600
 discharge[21] <= 21600
 discharge[22] <= 21600
 discharge[23] <= 21600
 soc[0] <= 86400
 soc[1] <= 86400
 soc[2] <= 86400
 soc[3] <= 86400
 soc[4] <= 86400
 soc[5] <= 86400
 soc[6] <= 86400
 soc[7] <= 86400
 soc[8] <= 86400
 soc[9] <= 86400
 soc[10] <= 86400
 soc[11] <= 86400
 soc[12] <= 86400
 soc[13] <= 86400
 soc[14] <= 86400
 soc[15] <= 86400
 soc[16] <= 86400
 soc[17] <= 86400
 soc[18] <= 86400
 soc[19] <= 86400
 soc[20] <= 86400
 soc[21] <= 86400
 soc[22] <= 86400
 soc[23] <= 86400
End
