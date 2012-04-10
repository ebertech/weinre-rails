Then /^I start remote debugging$/ do
  url = "http://localhost:8080/target/target-script-min.js#anonymous"
  script = %Q{jQuery("body").append("<script src='#{url}'></script>")}
  page.execute_script(script)
  puts "Executing paused, press enter when ready"
  $stdin.gets
end