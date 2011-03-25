require 'autotest/rspec2'
class Autotest::Specopts < Autotest::Rspec2

  def make_test_cmd(*args)
    result = super(*args)
    result += " -O spec/spec.opts" unless result.empty?
    result
  end
end