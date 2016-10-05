require "./expectation_target"

module Expect
  module Extentions
    def expect(value)
      Expect::ExpectationTarget.new(value)
    end

    def expect
      Expect::ExpectationTarget.new(yield)
    end
  end
end
