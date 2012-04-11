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
namespace :c do
  program_name = "NumberGuess"
  desc "Clean the C app"
  task :clean do
    File.delete program_name if File.exist? program_name
  end
  desc "Build the c sample app"
  task :build => :clean do
    executable = "gcc"
    options = [
      "-o #{program_name}",
      "c/#{program_name}.c"
    ]
    command = "#{executable} #{options.join(" ")}"
    puts "Building: #{command}"
    system command
  end
  desc "run the C application"
  task :run => :build do
    command = "./#{program_name}"
    puts "running: #{command}"
    system command
  end
end
namespace :objc do
  desc "clean the xcode project"
  task :clean do
    command = "xcodebuild -project ./obj_c/NumberGuess.xcodeproj clean"
    system command
  end
  desc "build the xcode project"
  task :build do
    command = "xcodebuild -project ./obj_c/NumberGuess.xcodeproj clean build"
    system command
  end
  desc "Run the Objective C Program"
  task :run => :build do
    command = "obj_c/build/Release/NumberGuess"
    system command
  end
end
namespace :go do
  desc "run go program"
  task :run do
    command = "go run go/number_guess.go"
    system command
  end
end

namespace :java do
  desc "run java Program"
  task :run => :build do
    command = " java -cp ./java NumberGuess"
    system command
  end
  desc "build the java programming"
  task :build => :clean do
    command = "javac java/NumberGuess.java"
    system command
  end
  desc "clean the java builds"
  task :clean do
    command = "rm -v java/*.class"
    system command
  end
end

namespace :python do
  desc "Run python example"
  task :run do
    command = "python python/number_guess.py"
    system command
  end
end
namespace :ruby do
  desc "Run ruby example"
  task :run do
    command = "ruby ruby/number_guess.rb"
    system command
  end
end