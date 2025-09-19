Image de base : 1.73GB

Mauvaise pratique : 

- Ne pas utiliser latest en version.
- node_modules ne doit pas être copié depuis l’hôte
- RUN apt-get update && apt-get install ... paquet lourd non utile

--------------------------------------------------------------------

Iteration 2 : 280MB

- Mettre en "development" dans une image de production est une erreur -> mettre en production directement
- Mauvais ordre : copie de tout le projet avant npm install -> empêche le caching Docker efficace.
- On devrait copier uniquement package*.json d’abord, installer, puis copier le reste.

--------------------------------------------------------------------

Iteration 3 : 242MB

