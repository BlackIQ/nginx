# [BlackIQ/nginx](https://hub.docker.com/r/blackiq/nginx)

Welcome to my custom NGINX Docker image! Built with love and care, this lightweight, flexible web server is ready to serve your apps with style. Based on `nginx:alpine`, it’s designed to be reusable across projects by letting you mount your own SSL certificates, config files, and web content at runtime. No more rebuilding for every tweak—just pure, simple elegance.

> A lightweight NGINX image ready to serve your apps. Mount your SSL certificates, config files, and static content to get started.

## Usage

### Docker Run

```bash
docker run -d \
  -v /path/to/ssl:/etc/nginx/ssl \
  -v /path/to/configs:/etc/nginx/conf.d \
  -v /path/to/statics:/var/www/files \
  -p 80:80 -p 443:443 \
  blackiq/nginx
```

- Mount SSL certificates (e.g., `cert.pem`, `key.pem`) at `/etc/nginx/ssl`.
- Mount NGINX config files (e.g., `default.conf`) at `/etc/nginx/conf.d`.
- Mount static files (e.g., `index.html`) at `/var/www/files`.

### Docker Compose

```yaml
version: "3"
services:
  nginx:
    image: blackiq/nginx
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - /path/to/ssl:/etc/nginx/ssl
      - /path/to/configs:/etc/nginx/conf.d
      - /path/to/statics:/var/www/files
```

- Replace `/path/to/...` with your local paths.
- SSL goes in `/etc/nginx/ssl`, configs in `/etc/nginx/conf.d`, and static files in `/var/www/files`.

---

That’s it! Short, sweet, and straight to the point for Docker Hub users. Let me know if you want any adjustments!
