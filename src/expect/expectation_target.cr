module Expect
  struct ExpectationTarget(T)
    getter :target

    # :nodoc:
    def initialize(@target : T)
    end

    def to(expectation, file = __FILE__, line = __LINE__)
      unless expectation.match @target
        fail(expectation.failure_message(@target), file, line)
      end
    end

    def to_not(expectation, file = __FILE__, line = __LINE__)
      if expectation.match @target
        fail(expectation.negative_failure_message(@target), file, line)
      end
    end

    # alias to `to_not`
    def not_to(expectation, file = __FILE__, line = __LINE__)
      to_not(expectation, file = __FILE__, line = __LINE__)
    end
  end
end
