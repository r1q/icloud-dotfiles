if defined?(PryByebug)
  Pry.commands.alias_command "c", "continue"
  Pry.commands.alias_command "s", "step"
  Pry.commands.alias_command "n", "next"
  Pry.commands.alias_command "f", "finish"
end

def pbcopy(arg)
  out = arg.is_a?(String) ? arg : arg.inspect
  IO.popen("pbcopy", "w") { |io| io.puts out }
  puts out
  true
end

# See: https://github.com/pry/pry/issues/2185#issuecomment-945082143
ENV["PAGER"] = " less --raw-control-chars -F -X"
