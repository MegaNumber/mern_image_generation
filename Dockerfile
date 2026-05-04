# دستورالعمل ساخت ایمیج داکر برای بک‌اند

# استفاده از یک نسخه سبک Node.js
FROM node:18-alpine

# رفتن به پوشه کاری داخل کانتینر
WORKDIR /app

# اول فقط فایل‌های package.json را از پوشه server کپی می‌کنیم.
# این کار برای استفاده بهینه از کش (Cache) داکر انجام میشه.
COPY server/package*.json ./

# نصب وابستگی‌ها
RUN npm install

# حالا بقیه فایل‌های پوشه server رو کپی کن
COPY server/ .

# باز کردن پورت 3000 (مطابق با تنظیمات سرویس رانفلر)
EXPOSE 3000

# اجرای سرور با Node.js
CMD ["node", "index.js"]
