require 'yaml'
const NEW_LINE="\n"
const trigger="whatsup"
const replacement="not much, you?"
  def yamlfileexport(trigger,replacement)
    File.open("test.yml","a") { |file| file.write('  - trigger:'+'":'+trigger+'"'+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('    replace:'+'"'+replacement+'"'+NEW_LINE) }
    puts "SAVING TO YAML NOW"
  end

  yamlfileexport(trigger,replacement)

