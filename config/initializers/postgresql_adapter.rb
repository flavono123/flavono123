module ActiveRecord
  module ConnectionAdapters
    class PostgreSQLAdapter < AbstractAdapter
      def execute(sql, name=nil)
        failed = false
        super(sql, name)
      rescue => e
        failed = true
        puts "\e[31m#{sql}\e[0m"
      ensure
        puts "\e[32m#{sql}\e[0m" unless failed
      end
    end
  end
end
