# Gunakan image Nginx versi ringan (Alpine Linux)
FROM nginx:alpine

# Hapus halaman default Nginx (opsional agar bersih)
RUN rm -rf /usr/share/nginx/html/*

# Salin file kalkulator kita ke folder web server Nginx di dalam container
COPY index.html /usr/share/nginx/html/index.html

# Ekspos port 80 di internal container
EXPOSE 80

# Jalankan Nginx saat container aktif
CMD ["nginx", "-g", "daemon off;"]