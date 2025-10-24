# ใช้ Node 20 (มี global File API ที่ n8n/oclif ต้องใช้)
FROM node:20-bullseye

# ตั้งเวลา
ENV GENERIC_TIMEZONE="Asia/Bangkok"

# ติดตั้ง n8n แบบ global
RUN npm install -g n8n@latest

# Render จะให้ $PORT ตอนรัน: bind ตามนั้น
# เปิดพอร์ตตัวอย่าง 10000 (จะถูกแทนที่ด้วย $PORT อยู่ดี)
EXPOSE 10000
ENV N8N_PORT=10000

# บังคับให้ n8n ฟังพอร์ต $PORT ของ Render
CMD ["sh", "-lc", "n8n start --port $PORT"]
