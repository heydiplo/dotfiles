if ENV['RAILS_ENV']
  require 'rubygems'

  begin
    require 'ap'
  rescue LoadError
    puts 'Error loading awesome_print. Run "gem install awesome_print"'
  end
  
  begin
    require 'hirb'
    Hirb.enable
  rescue LoadError
    puts 'Error loading Hirb. Run "gem install hirb"'
  end
  
  begin
    require 'wirble'

    Wirble.init
    Wirble.colorize
  rescue LoadError
    puts 'Error loading wirble. Run "gem install wirble"'
  end

  begin
    require 'looksee/shortcuts'
  rescue LoadError
    puts 'Error loading looksee. Run "gem install looksee"'
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
