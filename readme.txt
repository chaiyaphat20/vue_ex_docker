Step deploy
1.create repository บน docker hub
ex. chaiyaphat12079/vue-app

2.run docker-compose ต้องชื่อ image + tag ให้ตรงกับ repository แบบ docker hub
ex. chaiyaphat12079/vue-app:1.0.0

3.ดู docker desktop เลือก menu push to Hub
4.ถ้า update image หรือ source code อัพเดต ชื่อ image เป็น versionล่าสุด ที่ docker-compose  **ลบ container verเดิม ด้วย เดียว port ชนกัน
ex. chaiyaphat12079/vue-app:1.0.1