class SourceCodeEasterEgg < Middleman::Extension
  EASTER_EGG = <<-EGG
<!--
  Welcome, brave explorer. The full source code for this website is freely
  available at:

      https://github.com/alexblackie/localyokals

  Patches are encouraged and appreciated!
-->
  EGG

  def after_build(builder)
    Dir.glob("#{ app.config[:build_dir] }/**/*.html").each{|f| prepend_easter_egg(builder, f) }
  end

  private

  def prepend_easter_egg(builder, file)
    builder.thor.prepend_to_file(file, EASTER_EGG)
  end
end

::Middleman::Extensions.register(:source_code_easter_egg, SourceCodeEasterEgg)
