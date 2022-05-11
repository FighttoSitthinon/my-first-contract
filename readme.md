# --------- Note ----------

## การ Run contract ใน Truffle Framework
1.  ```truffle console``` => เข้าสู่หน้า console'
2.  ```[ชื่อ Contract].deployed().then( [callback].[function] )``` เพื่อเข้าถึง functions ใน contract (ก็คือ js ดีๆนั่นแหละ)

## truffle CLI
Compile => ```truffle compile```
Deploy => ```truffle deploy```
Migrate => ```truffle migrate``` 

## options ```--reset``` => ```truffle migrate --reset``` 
โดยปกติ migration จะ run migration file ที่ยังไม่ได้ run ถ้าประกาศ ```--reset``` จะเป็นการให้ทำการ migration ทุกไฟล์ใหม่หมด

## การประกาศ ```memory``` เวลา return ค่า
 การประกาศ memory จะไม่ถูกบันทึกลงใน Block จะบันทึกลงใน EVM (Ethereum Virtual Machine)
 
## ประกาศ ```view``` ใน function
เป็นการที่จะอ่านข้อมูลโดยที่จะไม่เขียนลงใน Block (ไม่ประกาศจะเป็นการ run transection) เป็นแค่การอ่านข้อมูล (ไม่เสียค่า Gas)

- constructor ทำงานเมื่อ deploy
- การ return ไม่สามารถ return object ได้ ต้อง return เฉพาะ type ไปเลย
