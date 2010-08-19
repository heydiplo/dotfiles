if ENV['RAILS_ENV']
  require 'rubygems'
  require 'hirb'
  if Hirb
    Hirb.enable
  else
    puts 'Error loading Hirb. Run "gem hirb install"'
  end
end
