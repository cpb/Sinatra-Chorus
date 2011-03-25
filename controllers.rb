require 'extlib'

controller_path = File.join(File.dirname(__FILE__),File.basename(__FILE__,".rb"))
$:.unshift(controller_path)

module Controllers
  def self.included base
    self.constants.each do |controller_name|
      controller = self.const_get(controller_name)

      base.use controller if controller.ancestors.include?(Sinatra::Base)
    end
  end
end

Dir.glob(File.join(controller_path,"*.rb")).each do |controller_file|
  Controllers.autoload File.basename(controller_file,'.rb').to_const_string.to_sym, controller_file
end