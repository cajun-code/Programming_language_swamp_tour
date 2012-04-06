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
