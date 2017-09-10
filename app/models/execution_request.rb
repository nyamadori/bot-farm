class ExecutionRequest < ApplicationRecord
  enum status: { waiting: 0, succeeded: 1, failed: 2 }
end
