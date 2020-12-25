# final_project-yang-chen12
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Problem

請找到一個正數使得此數字的平方長相如下:

x9_x8_x7_x6_x5_x4_x3_x2_x1_x0

其中每個 _ 都是一個數字，而x0~x9也都是一個數字由使用者自行決定
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# 操作方法

使用者要輸入於向量[x0,x1,x2,x3,x4,x5,x6,x7,x8,x9]於project11()，系統會輸出最小正數使得此數字的平方長相如x9_x8_x7_x6_x5_x4_x3_x2_x1_x0，倘若沒有答案則輸出no answer

ex

Sample Iput:

project11([0,9,8,7,6,5,4,3,2,1])

project11([9,9,8,7,6,5,4,3,2,1])

project11([2,9,4,7,8,5,0,3,6,2])

project11([4,4,4,7,5,7,3,3,9,4])

project11([4,5,4,7,3,5,4,3,9,8])

project11([4,4,4,7,5,7,3,3,0,0])

Sample Output

1389019170 is root of1.929374254627489e+18

no answer

no answer

2143915432 is root of4.596373379567746e+18

no answer

17985538 is root of323479577149444

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
    
