module.exports = function(eleventyConfig) {
	eleventyConfig.addPassthroughCopy("src/CNAME");
	eleventyConfig.addPassthroughCopy("src/favicon.ico");
	eleventyConfig.addPassthroughCopy("src/fonts");
	eleventyConfig.addPassthroughCopy("src/css");
	eleventyConfig.addPassthroughCopy("src/media")
	return {
	   markdownTemplateEngine: "njk",
	   htmlTemplateEngine: "njk",
	   dir: {
		input: "src"
	   },
	};
};
