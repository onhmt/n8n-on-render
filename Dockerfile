# ใช้ Node.js เป็น base image
FROM node:18-bullseye

# ตั้ง timezone เป็นประเทศไทย
ENV GENERIC_TIMEZONE="Asia/Bangkok"

# ติดตั้ง n8n
RUN npm install -g n8n

# เปิดพอร์ต 5678 สำหรับ n8n
EXPOSE 5678

# รัน n8n
CMD ["n8n", "start"]
