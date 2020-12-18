require 'yaml'
const NEW_LINE="\n"
const QUOTE = '"'
const trigger="whatsup"
const replacement="not much, you?"
filename='test.yml'

#Just writes matches: at the beginning of file so espanso can read the mapping.
  def initialize_espanso_yml
    file_to_write='test.yml'
    File.open(file_to_write,"a") { |file| file.write('matches:'+NEW_LINE) }
  end
#Writes a
  def single_snippet_export(trigger,replacement)
    file_to_write='test.yml'

    File.open(file_to_write,"a") { |file| file.write('  - trigger: '+'":'+trigger+QUOTE+NEW_LINE) }
    File.open(file_to_write,"a") { |file| file.write('    replace: '+QUOTE+replacement+QUOTE+NEW_LINE) }
  end

  #Takes a string for trigger. formvalues should be arrays within an array.
  #Parses statement 
  def picklist_snippet_export(file_to_write)

    form_trigger = "yo"
    form_variable_name='choices:'
    form_type = 'choice'
    formvalues = ['eenie','meenie','minie','moe']
    statement = "I chose {{choices}}"
    File.open(file_to_write,"a") { |file| file.write('  - trigger: '+'":'+form_trigger+QUOTE+NEW_LINE) }
    File.open(file_to_write,"a") { |file| file.write('    form: '+QUOTE+statement+QUOTE+NEW_LINE) }
    File.open(file_to_write,"a") { |file| file.write('    form_fields:'+NEW_LINE) }
    File.open(file_to_write,"a") { |file| file.write('      '+form_variable_name+NEW_LINE) }
    File.open(file_to_write,"a") { |file| file.write('       type: '+ form_type+NEW_LINE) }
    File.open(file_to_write,"a") { |file| file.write('       values:'+NEW_LINE) }
    formvalues.each do |value|
      File.open(file_to_write,"a") { |file| file.write('          - '+QUOTE+value+QUOTE+NEW_LINE) }
    end
  end

    def input_form_snippet_export(file_to_write)

      form_trigger = "yo"
      statement = "I chose {{name}}"
      File.open(file_to_write,"a") { |file| file.write('  - trigger: '+QUOTE+':'+form_trigger+QUOTE+NEW_LINE) }
      File.open(file_to_write,"a") { |file| file.write('    form: |'+NEW_LINE)}
      File.open(file_to_write,"a") { |file| file.write('      Hi {{name}}'+NEW_LINE)}
    end

    def heading_snippet_export(file_to_write)
      name = "THIS IS AN AWESOME SECTION"
      File.open(file_to_write,"a") { |file| file.write("#"+ name) }     
    end

    def textarea_snippet_export(file_to_write)
      File.open(file_to_write,"a") { |file| file.write('  - trigger: '+'":'+trigger+QUOTE+NEW_LINE) }
      File.open(file_to_write,"a") { |file| file.write('    replace: '+QUOTE+replacement+QUOTE+NEW_LINE) }
    end
  initialize_espanso_yml(filename)
  single_snippet_export(trigger,replacement)
  picklist_snippet_export(filename)
  input_form_snippet_export(filename)
  heading_snippet_export(filename)

