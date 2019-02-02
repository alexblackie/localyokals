module.exports = function(config) {
  config.addPassthroughCopy("source/images");
  config.addPassthroughCopy("source/css");
  config.addPassthroughCopy("source/js");

  return {
    dir: {
      input: "source",
      output: "build"
    },
    passthroughFileCopy: true
  }
}
