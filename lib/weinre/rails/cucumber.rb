Then /^I start remote debugging$/ do
  script = %Q{jQuery("body").append("<script src='#{Weinre::Rails.url}'></script>")}
  page.execute_script(script)

  STDOUT.write("    Execution paused by weinre-rails, press enter when ready")
  STDOUT.flush 
  STDIN.gets
end