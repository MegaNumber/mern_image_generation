# مرحله ۱: انتخاب یک نسخه پایدار و سبک از Node.js
FROM node:18-alpine

# ساختن پوشه کاری داخل کانتینر
WORKDIR /app

# کپی کردن فایل‌های package.json از پوشه server برای نصب کتابخانه‌ها
COPY server/package*.json ./

# نصب وابستگی‌های ضروری
RUN npm install

# کپی کردن باقی کدهای سرور
COPY server/ .

# باز کردن پورت 8080 که برنامه روی آن اجرا می‌شود
EXPOSE 8080

# دستور نهایی برای اجرای اپلیکیشن
CMD ["node", "index.js"]
