# ใช้ image n8n อย่างเป็นทางการ
FROM n8nio/n8n:latest

# ตั้ง timezone เป็นประเทศไทย
ENV GENERIC_TIMEZONE="Asia/Bangkok"

# เปิดพอร์ตสำหรับเว็บ n8n
EXPOSE 5678

# คำสั่งเริ่มต้น (สำคัญมาก)
CMD ["n8n", "start"]
