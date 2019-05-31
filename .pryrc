Pry.config.editor = "vim"
Pry.config.editor = proc { |file, line| "vim +#{line} #{file}" }

Pry.config.memory_size = 300
Pry.config.theme = "tomorrow-night"

Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black
