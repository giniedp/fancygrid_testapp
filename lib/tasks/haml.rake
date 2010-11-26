namespace :haml do
  require 'config/environment'
  
  desc "Translates all erb templates from app/views/* to haml"
  task :translate_erb do
    viewdirs = Dir[Rails.root.join('app','views','*')]
    viewdirs = viewdirs.find_all { |f| File.stat(f).directory? }
    viewdirs.each do |dir|
      Dir.entries(dir).each do |entry|
        next unless entry.match(/\.erb$/)
        src = File.join(dir, entry)
        dst = File.join(dir, entry.gsub(".erb", ".haml"))
        command = "html2haml #{src} > #{dst} && rm #{src}"
        system(command)
      end
    end
  end
end