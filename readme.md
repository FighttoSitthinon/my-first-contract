# --------- Note กันลืมแหละ ----------


## การ Run contract ใน Truffle Framework
1.  ```truffle console``` => เข้าสู่หน้า console'
2.  ```[Contract].deployed().then( [callback].[function] )``` เพื่อเข้าถึง functions ใน contract (ก็คือ js ดีๆนั่นแหละ)
    หรือจะใช้ ```app = await [Contract].deployed()``` แล้วเรียกใช้ผ่าน ตัวแปร ```app``` ก็ได้เหมือนกัน

## truffle CLI
Compile => ```truffle compile```
Deploy => ```truffle deploy```
Migrate => ```truffle migrate``` 

## options ```--reset``` => ```truffle migrate --reset``` 
โดยปกติ migration จะ run migration file ที่ยังไม่ได้ run ถ้าประกาศ ```--reset``` จะเป็นการให้ทำการ migration ทุกไฟล์ใหม่หมด

## การประกาศ ```memory``` เวลา return ค่า
 การประกาศ memory จะไม่ถูกบันทึกลงใน Block จะบันทึกลงใน EVM (Ethereum Virtual Machine)
 
## การประกาศ ```view``` ใน function
เป็นการที่จะอ่านข้อมูลโดยที่จะไม่เขียนลงใน Block (ไม่ประกาศจะเป็นการ run transection) เป็นแค่การอ่านข้อมูล (ไม่เสียค่า Gas)


### ทั่วไป
- constructor ทำงานเมื่อ deploy
- การ return ไม่สามารถ return object ได้ ต้อง return เฉพาะ type ไปเลย


### เกี่ยวกับค่า Gas
- run transection = เสีย, Read ค่าจาก Block = ไม่เสีย 

## Handling Error
- ```revert()``` => ยกเลิกคำสั่งที่เคยทำ แล้ว gas ที่เคยใช้จะคืนให้ผู้เรียกใช้
- ```assert()``` => ใช้เวลาเกิดความผิดพลาด ยกเลิกการเปลี่ยนแปลงทั้งหมด gas ไม่คืน ไปแล้วไปลับ
- ```requuire()``` => ตรวจสอบความต้องการก่อนเริ่ม function (เช่น่า gas ที่ต้องใช้) ถ้าไม่พอจะส่งค่าบอก และคืน gas ที่ถูกใช้ (แต่ไม่ได้ใช้)

## Array
```Event public events[]``` => ไม่นิยมในการใช้ใน solidity เปลืองมั้ง
แต่เวลาเก็บลงใน Block จะใช้ ```mapping``` แทน คิดว่านะ
