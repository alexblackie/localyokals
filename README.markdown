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

## CI

This project uses [Drone CI][3] for automated builds and deployments. Its
configuration lives in `.drone.yml`.

Builds are only automatically run on `master` for security. Additionally, the CI
configuration is signed using a server-side secret to prevent tampering by
third-parties.

To regenerate the signature, you'll need to run:

```
$ drone sign alexblackie/localyokals --save
```

Using the [Drone CLI][4] to regenerate the signature. This, of course, requires
you to have access to the project on Drone CI.

[3]: https://drone.io/
[4]: https://docs.drone.io/cli/
