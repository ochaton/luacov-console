package = "luacov-console"
version = "1.2.0-1"
source = {
   url = "git+https://github.com/ochaton/luacov-console",
   tag = "1.2"
}
description = {
   summary = "Combine luacov with your development cycle and CI",
   detailed = "Combine luacov with your development cycle and CI",
   homepage = "https://github.com/spacewander/luacov-console",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luacov > 0.5",
   "luafilesystem",
   "argparse",
   "lua-path"
}
build = {
   type = "builtin",
   modules = {
      ["luacov.reporter.console"] = "src/luacov/reporter/console.lua"
   },
   copy_directories = {},
   install = {
      bin = {
         ["luacov-console"] = "src/luacov-console.lua"
      }
   }
}
