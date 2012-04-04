namespace :cpp do
  program_name = "NumberGuess"
  desc "Clean the C++ app"
  task :clean do
    File.delete program_name if File.exist? program_name
  end
  desc "Build the c++ sample app"
  task :build => :clean do
    executable = "g++"
    options = [
      "-o #{program_name}",
      "cpp/#{program_name}.cpp"
    ]
    command = "#{executable} #{options.join(" ")}"
    puts "Building: #{command}"
    system command
  end
  desc "run the C++ application"
  task :run => :build do
    command = "./#{program_name}"
    puts "running: #{command}"
    system command
  end
end

