const { VextPackPlugin } = require('vextpack');

module.exports = {
	configureWebpack: {
		plugins: [
			new VextPackPlugin({
        outputPath:'../'
        //hotReloadSupport: process.env.NODE_ENV !== 'production'
			})
		]
	}
};