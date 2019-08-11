# frozen_string_literal: true

current_path = File.dirname(__FILE__)

eyes_path = current_path + '/data/eyes.txt'
foreheads_path = current_path + '/data/foreheads.txt'
mouths_path = current_path + '/data/mouths.txt'
noses_path = current_path + '/data/noses.txt'

status = 0
bad_path = []

if File.exist?(eyes_path)
  file = File.new(eyes_path)
  eyes = file.readlines
  file.close
  status = 1
else
  # puts 'Eyes are not found'
  status = 0
  bad_path << 'eyes'
end

if File.exist?(foreheads_path)
  file = File.new(foreheads_path)
  foreheads = file.readlines
  file.close
  status = 1
else
  # puts 'Foreheads are not found'
  status = 0
  bad_path << 'foreheads'
end

if File.exist?(mouths_path)
  file = File.new(mouths_path)
  mouths = file.readlines
  file.close
else
  # puts 'Mouths are not found'
  bad_path << 'mouths'
end

if File.exist?(noses_path)
  file = File.new(noses_path)
  noses = file.readlines
  file.close
  status = 1
else
  # puts 'Noses are not found'
  status = 0
  bad_path << 'noses'
end

if status == 1
  system 'clear'

  puts '   ' + foreheads.sample
  puts '   ' + eyes.sample
  puts '   ' + noses.sample
  puts '   ' + mouths.sample
else
  puts 'Files are not found:'
  bad_path.each do |x|
    puts x
  end
end
