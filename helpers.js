var helpers = {
    swiftColor: function(color) {
      var f = function(n) { return n < 0.001 ? 0 : (n/255).toFixed(3); };
      return 'red:'+f(color.r)+' green:'+f(color.g)+' blue:'+f(color.b)+' alpha:' + color.a;
    },
    swiftAlignment: function(align) {
      var code = '';
      switch (align) {
        case 'left':
          code = '.Left';
          break;
        case 'right':
          code = '.Right';
          break;
        case 'center':
          code = '.Center';
          break;
        case 'justified':
          code = '.Justified';
          break;
      }
      return code;
    },
    swiftFont: function(chunk, ctx, bodies, params) {
      var baseTextStyle = ctx.get('baseTextStyle');
      return chunk.write(baseTextStyle.font.name);
    },
    // 'NSLocalizedString("'+this.name+'", comment: "")'
    nsLocalizedString: function(data) {
      var loc = data.options['localizedString'] ? true : false;
      return loc ?
        'NSLocalizedString("' + data.text + '", nil)' :
        '"' + data.text + '"';
    }
};

exports.swiftColor = helpers.swiftColor
exports.swiftAlignment = helpers.swiftAlignment
exports.swiftFont = helpers.swiftFont
exports.nsLocalizedString = helpers.nsLocalizedString
