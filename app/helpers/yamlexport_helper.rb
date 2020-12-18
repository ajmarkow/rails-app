require 'yaml'

snippet = {'- trigger': ":thisismysnippet",
              'replacement': "Isnt my snippet cool?" }

  def yamlfileexport(snippet)
    File.open("test.yml","w") { |file| file.write(snippet.to_yaml) }
    puts "SAVING TO YAML NOW"
  end

  yamlfileexport(snippet)

