module ActiveRecord
  module ConnectionAdapters
    module QueryPrintable
      def execute(sql, name=nil)
        failed = false
        super(sql, name)
      rescue => e
        failed = true
      ensure
        color = failed ? 31 : 32
        puts "\e[#{color}m#{sql}\e[0m"
      end
    end

    class PostgreSQLAdapter < AbstractAdapter; end
    PostgreSQLAdapter.prepend(QueryPrintable) if Rails.env.development?
  end
end
