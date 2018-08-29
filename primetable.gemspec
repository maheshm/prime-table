Gem::Specification.new do |s|
  s.name = "primetable"
  s.authors = ['Mahesh M']
  s.version = "0.0.1"
  s.executables = ['prime-table']
  s.date = %q{2018-08-29}
  s.summary = %q{primetable generates prime number multiplication table}
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]
end
