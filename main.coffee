_ = require './helpers'

class Swift
  render: ($) ->
    $ "let #{@name} = UITextField()"
    $ "#{@name}.setTranslatesAutoresizingMaskIntoConstraints(false)"
    $ "#{@name}.textColor = UIColor(#{_.swiftColor(@baseTextStyle.color)})"
    $ "#{@name}.font = UIFont(name: \"#{@baseTextStyle.font.name}\", size: 24)"
    $ "#{@name}.textAlignment = #{_.swiftAlignment(@textAlign)}"
    $ "#{@name}.placeholder = \"#{@name}\""
    $.newline()
    $ "#{@options.superviewName}.addSubview(#{@name})"


exports.renderClass = Swift
