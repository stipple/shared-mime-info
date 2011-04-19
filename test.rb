# cvs -d:pserver:anoncvs@anoncvs.freedesktop.org:/cvs/mime co shared-mime-info/tests

$: << 'lib'
require File.expand_path('lib/shared-mime-info', File.dirname(__FILE__))

File.foreach(File.expand_path('shared-mime-info/tests/list', File.dirname(__FILE__))) do |line|
  next if line =~ /^#/ or line =~ /^$/
  line.chomp!
  file, type, test = line.split ' ', 3
  n,d,f = (test || '').ljust(3, 'o').split(//).collect {|t| t == 'o'}

  filename_check = MIME.check_globs("shared-mime-info/tests/#{file}") == type
  data_check = MIME.check_magics(open "shared-mime-info/tests/#{file}") == type

  if filename_check != n or data_check != d
  puts file + " " + filename_check.to_s + " " + data_check.to_s
  end
end
