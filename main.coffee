_ = require './helpers'

class Swift
  render: ($) ->
    $ "let #{@name} = UITextField()"
    $ "#{@name}.setTranslatesAutoresizingMaskIntoConstraints(false)"
    $ "#{@name}.textColor = UIColor(#{_.swiftColor(@baseTextStyle.color)})"
    if @baseTextStyle.font.postScriptName
      $ "#{@name}.font = UIFont(name: \"#{@baseTextStyle.font.postScriptName}\", size: #{@baseTextStyle.font.size / 2})"
    $ "#{@name}.textAlignment = #{_.swiftAlignment(@textAlign)}"
    $ "#{@name}.placeholder = #{_.nsLocalizedString(this)}"
    $.newline()
    $ "#{@options.superviewName}.addSubview(#{@name})"


exports.renderClass = Swift
