# web-notes 

*A simple web application for notes. Powered by Perl and Mojolicious.*  

[View Demo](https://web-notes.site)

----
## ☑️ TODO
- [ ] Add scalability to the frontend (Mobile support)🤦
- [x] something
----

Here will be screenshot


----

## Development

### Locally

Before you start make sure you have dependencies (Mojolicious@8.72) and the perl 5.20.

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


