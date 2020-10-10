Given('the login page is opened successfully') do
    $driver.get('http://the-internet.herokuapp.com/login')
     
end

When('user input username {string} and password {string}') do |string, string2|
    $driver.find_element(:css, '#username').send_keys(string)
    $driver.find_element(:css, '#password').send_keys(string2)
    $driver.find_element(:css, '.fa.fa-2x.fa-sign-in').click
end

Then('the message {string} should be displayed') do |string|
    warning_message = $driver.find_element(css: '#flash').text.delete ("\n")
    expect(warning_message).to include(string)
end