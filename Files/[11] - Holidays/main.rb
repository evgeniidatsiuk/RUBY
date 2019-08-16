current_path = File.dirname(__FILE__)

file_path = current_path + '/data/holidays.txt'

current_time = Time.now

wday = current_time.wday

if wday == 0 || wday == 6
  abort 'Сегодня выходной!'
  #exit
end

time = current_time.strftime('%d.%m')

if File.exists?(file_path)
  file = File.new(file_path)
  holidays = file.readlines
  file.close

  for i in holidays do
    i.chomp!
  end
  if holidays.include?(time)
    puts 'You can go on vacation'
  else
    puts "You can't go on vacation"
  end
else
  puts 'File is not found'
end
