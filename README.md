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

               1389019170

     X         1389019170

               0000000000
           
              9723134190
          
             1389019170
         
           12501172530
       
           1389019170
       
          0000000000
      
        12501172530
    
       11112153360
   
       4167057510
   
      1389019170
      
    =1929374254627488900
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
解題方法
1.首先先找出滿足該格式最小數(每個"_"皆為0)的平方跟

2.假如格式最後1項為2，3，7，8，則輸出no answer，並結束程式(沒任何一數平方的個位為2，3，7，8)

最後1位為5時則另i1為大於等於此數平方根且尾項為5的數

最後1位為1時則另i1為大於等於此數平方根且尾項為1的數,則另i2為大於等於此數平方根且尾項為9的數

最後1位為4時則另i1為大於等於此數平方根且尾項為2的數,則另i2為大於等於此數平方根且尾項為8的數

最後1位為6時則另i1為大於等於此數平方根且尾項為4的數,則另i2為大於等於此數平方根且尾項為6的數

最後1位為9時則另i1為大於等於此數平方根且尾項為3的數,則另i2為大於等於此數平方根且尾項為7的數

最後1位為0時要檢查倒數第2位檢查方式如上並且結尾為原來的10倍

3.檢查i1,i2的平方是否滿足格式，倘若滿足則輸出結果並結束程式
如果不符合則讓i1,i2加10做迭代(尾項為0則加100)，並重複步驟3

4.倘若i1，i2平方大於滿足該格式最小數(每個"_"皆為9)，則輸出no answer，並結束程式
    
