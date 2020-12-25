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
1.首先檢查尾項，倘若最後1項為2，3，7，8只接不做下一步並直接輸出no answer # (因為沒有任何樹的平方為這些數結尾)
剩下再分為3個狀況處理
  case1 (尾項為5)
  2.
    
