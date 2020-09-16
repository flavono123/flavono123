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

#Type.all.each do |type|
#  next if type.icon.attached?
#
#  name = type.name
#  type.icon.attach(
#    io: File.open(Rails.root.join("storage/images/types/icons/#{name}")),
#    filename: "#{name}.png",
#    content_type: 'image/png'
#  )
#end
