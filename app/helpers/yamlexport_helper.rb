require 'yaml'
const NEW_LINE="\n"
const QUOTE = '"'
const trigger="whatsup"
const replacement="not much, you?"
  def single_snippet_export(trigger,replacement)
    File.open("test.yml","a") { |file| file.write('  - trigger:'+'":'+trigger+QUOTE+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('    replace:'+QUOTE+replacement+QUOTE+NEW_LINE) }
  end

  #Takes a string for trigger. Statement and formvalues should be of type array
  #Parses statement 
  def picklist_snippet_export()
    form_trigger = "yo"
    form_variable_name='choices'
    form_type = 'choice'
    formvalues = ['eenie','meenie','minie','moe']
    statement = "I chose {{choices}}"
    File.open("test.yml","a") { |file| file.write('  - trigger:'+'":'+form_trigger+QUOTE+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('    form:'+QUOTE+statement+QUOTE+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('    form_fields:'+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('      '+form_variable_name+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('       type:'+ form_type+NEW_LINE) }
    File.open("test.yml","a") { |file| file.write('       values:'+NEW_LINE) }
    formvalues.each do |value|
      File.open("test.yml","a") { |file| file.write('          - '+QUOTE+value+QUOTE+NEW_LINE) }
    end



  end

  # single_snippet_export(trigger,replacement)
  picklist_snippet_export()

