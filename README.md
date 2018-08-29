commands:

1. gem install rspec
2. bundle


#sleep
as far as I can see there is currently no capybara function to verify whether the browser is done loading (I screened the code base but couldn't find it ; selenium seems to have a wait_for_page_to_load function but this function does not seem to be usable from within capybara ).

One can check for a specific element to be present on the page after the click action, however this is not always possible (for example saving a form which returns to the same page and only shows a message in case of a validation issue).

Adding a hardcoded sleep also seems incorrect as the time to sleep may vary and depends on the server and network

Making the click action synchronous will always work.
