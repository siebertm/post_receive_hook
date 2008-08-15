GIT_BIN = "git"
GIT_REPOSITORY = ""
app = proc do |env|
  res = `cd #{GIT_REPOSITORY} && #{GIT_BIN} pull origin master`
  return [200, { "Content-Type" => "text/html" }, "DONE: <br /><pre>#{res}</pre>"]
end
run app