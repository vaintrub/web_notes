# [web-notes](https://web-notes.site)

*A simple web application for notes. Powered by Perl and Mojolicious.*  

[View Demo](https://web-notes.site)

----
This web application describes the basic principles of working with the mojolicious web framework.
It complies with the mvc principle.

Implemented user authentication, storing their notes and pictures.
It is possible to share a note by copying the link to it *(only an authorized user can view the note)*

Sqlite was chosen as storage for users and notes

----

## Deployment

### Locally

Before you start make sure you have the dependencies and perl 5.20. You can see the required dependencies in the dockerfile.

1. Fork and or clone this repository locally
2. `cd web_notes`
3. `morbo script/web_notes`
4. Open your browser to `http://localhost:3000`

***Note:** Also you can use `script/web_notes daemon`. More information: https://docs.mojolicious.org/Mojolicious/Guides/Cookbook#DEPLOYMENT*

### Docker

If you have docker installed you can simply run:

```
cd web_notes
docker build -t notes .
docker run --rm -d --name notes -p 8080:8080 notes
```
***Note:** If you want the database to be saved after restarting the application, you can add a flag: 

`-v /Your/local/path/web_notes/storage:/usr/src/web_notes/storage`*

It launches the site in a container, it will then be hosted at `http://localhost:8080`

----
## ☑️ TODO
- [ ] Create unit tests!
- [ ] Add scalability to the frontend (Mobile support)🤦
- [x] Make password and login validation on the client side
- [ ] Make sharing notes more convenient
- [ ] Check security for attacks
