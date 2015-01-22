module Delayed
  module Web
    class ActiveRecordDecorator < SimpleDelegator
      def queue! now = Time.current
        update_column :run_at, now
        update_column :failed_at, nil
        update_column :last_error, nil
      end
    end
  end
end
