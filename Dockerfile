# استفاده از Node.js نسخه ۱۸ سبک و امن
FROM node:18-alpine

# پوشه کاری در کانتینر
WORKDIR /app

# کپی کردن فایل‌های وابستگی (مهم: مطمئن شو package.json در ریشه است)
COPY package*.json ./

# نصب کتابخانه‌ها
RUN npm install

# کپی کردن بقیه فایل‌های پروژه
COPY . .

# باز کردن پورت 3000 (چون سرویس داکری روی این پورت تنظیم شده)
EXPOSE 3000

# اجرای برنامه
CMD ["node", "index.js"]
