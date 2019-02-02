# Cultivating Local Yokals Website

This is the source code for the website for the [Cultivating Local Yokals
Society][1], a non-profit organization in Victoria, BC, Canada providing
programs for people with disabilities.

[1]: http://www.localyokals.ca/

## Development

This website is built using the [Eleventy][2] build system. You will need NodeJS
and NPM installed.

Install dependencies:

```
$ npm install
```

Then build the site:

```
$ npx eleventy
```

The built output will be in `./build`.

To start a local development server, use:

```
$ npx eleventy --serve
```

[2]: https://www.11ty.io/
