# On utilise Nginx comme serveur web léger
FROM nginx:alpine

# On supprime le contenu par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# On copie tous nos fichiers HTML dans le dossier de Nginx
COPY . /usr/share/nginx/html/

# On expose le port 80
EXPOSE 80

# Nginx démarre automatiquement
CMD ["nginx", "-g", "daemon off;"]
```

Votre dossier doit maintenant ressembler à ça :
```
mon-projet/
├── Dockerfile          ← nouveau fichier
├── index.html
├── css/
├── js/
└── images/