# docker-letsencrypt
Docker construido para crear y renovar certificados Let's Encrypt.

Para crear un certificado se debe ejecutar el siguiente comando:
```bash
docker run -it --name letsencrypt -v `pwd`/letsencrypt:/etc/letsencrypt jarfernandez/letsencrypt ./certbot-auto certonly --force-renew -a manual -d <www.midominio.com> -d <midominio.com>
```

Para renovar un certificado se debe ejecutar el siguiente comando:
```bash
docker run -it --name letsencrypt -v `pwd`/letsencrypt:/etc/letsencrypt jarfernandez/letsencrypt ./certbot-auto renew
```

Los certificados se guardarán en el directorio **letsencrypt/live/<www.midominio.com>**

---

Tags: docker, letsencrypt, ubuntu
