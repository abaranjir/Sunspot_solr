set :recipient , "Abaranji"
task :hello do
  puts "Hello #{fetch(:recipient , "World")}" 
#  goodbye
end

task :goodbye do
  puts "Good Bye #{recipient}"  
end

after :hello, :goodbye