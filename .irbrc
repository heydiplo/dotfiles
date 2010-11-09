if ENV['RAILS_ENV']
    require 'rubygems'

    %w(ap looksee/shortcuts hirb wirble).each do |gem|
        begin
            require gem
        rescue LoadError
        end
    end

    Hirb.enable if Hirb

    if Wirble
        Wirble.init
        Wirble.colorize
    end

    def change_log(stream)
        ActiveRecord::Base.logger = Logger.new(stream)
        ActiveRecord::Base.clear_active_connections!
    end

    def show_log
        change_log(STDOUT)
        puts "SQL log enabled."
    end

    def hide_log
        change_log(nil)
        puts "SQL log disabled."
    end

    def sql(query)
        ActiveRecord::Base.connection.select_all(query)
    end
end
