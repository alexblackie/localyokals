module.exports = function(config) {
  config.addPassthroughCopy("source/images");
  config.addPassthroughCopy("source/css");
  config.addPassthroughCopy("source/js");

  config.addPairedShortcode("prod", function(content) {
    if (process.env.ELEVENTY_PRODUCTION) {
      return content;
    }
  });

  return {
    dir: {
      input: "source",
      output: "build"
    },
    passthroughFileCopy: true
  }
}
