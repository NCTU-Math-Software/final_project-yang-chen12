#  yang-chen-findroot
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Problem

請找到一個正數使得此數字的平方長相如下:

1_2_3_4_5_6_7_8_9_0

其中每個 _ 都是一個數字

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# 操作方法

Sample Iput:rootFinding

Sample Output

1389019170is root of 1929374254627488900

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# 解題方法

1.首先先找出滿足該格式最小數(1020304050607080900)的平方根i，

由於目標是一個完全平方數，最後1項為0所以其第2項也為0且根為0結尾，且第3項為9，所以其根為30或70結尾，固令i1,i2為最接近此數且大於i，並且為30及70結尾(減少程式的時間複雜度)

2.用 i1,i2做迭代倘若其中1個得平方滿足題目條件則結束迴圈，倘若無法則i1,i2加100並重複步驟2(檢查是否滿足條件方法在下方討論)

3.倘若i1,i2的平方大於滿足條件最大數(1929394959697989900)，結束輸出no answer，並結束程式

假如找到答案，輸出答案及其平方，並驗算是否錯誤

** 檢查是否滿足條件方法在下方討論

由於matlab只能存取15位數的整數，然而i1,i2的平方為19位數，倘若直接存取會造成後面幾位資料的不精準 

故在計算時要先把i1,i2的每一位數存入陣列，並將其平方存入大小為前一陣列2倍減1，這樣就能完整的存取19位數避免了存取大數所造成的誤差

最後在逐項檢查是否滿足條件

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# 計算結果

最後程式有找到1正整數1389019170，他是1929374254627488900,1929374254627488900滿足了題目條件，故此題有解
