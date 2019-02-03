const htmlmin = require("html-minifier");

module.exports = function(config) {
  config.addPassthroughCopy("source/images");
  config.addPassthroughCopy("source/css");
  config.addPassthroughCopy("source/js");

  config.addPairedShortcode("prod", function(content) {
    if (process.env.ELEVENTY_PRODUCTION) {
      return content;
    }
  });

  config.addTransform("htmlmin", function(content, outputPath) {
    if (outputPath.endsWith(".html")) {
      return htmlmin.minify(content, {
        useShortDoctype: true,
        removeComments: true,
        collapseWhitespace: true
      });
    }
    return content;
  });

  return {
    dir: {
      input: "source",
      output: "build"
    },
    passthroughFileCopy: true
  }
}
