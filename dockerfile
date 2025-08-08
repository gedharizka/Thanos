# Menggunakan Nginx sebagai server web
FROM nginx:alpine

# Salin file Nginx konfigurasi khusus
COPY nginx.conf /etc/nginx/nginx.conf

# Salin file dari /src ke direktori Nginx untuk disajikan
COPY . /usr/share/nginx/html

# Expose port 80 untuk akses
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]