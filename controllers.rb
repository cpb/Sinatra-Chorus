require 'extlib'

controller_path = File.join(File.dirname(__FILE__),File.basename(__FILE__,".rb"))
$:.unshift(controller_path)

module Controllers
end

Dir.glob(File.join(controller_path,"*.rb")).each do |controller_file|
  Controllers.autoload File.basename(controller_file,'.rb').to_const_string.to_sym, controller_file
end