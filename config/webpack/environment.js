const { environment } = require('@rails/webpacker');
const { merge } = require('webpack-merge');

const customConfig = {
  resolve: {
    extensions: ['.js', '.jsx']
  }
};

environment.config.merge(customConfig);

module.exports = environment;
