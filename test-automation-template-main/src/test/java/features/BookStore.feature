Feature: BookStore API
  @Authenticate @Web-UI
  Scenario: Get books
    * Get all the books from database
    * Get all books on bookstore and add by publisher named No Starch Press to user in context
    * Get the user in context
    * Navigate to the test page
    * Click listed element Book Store Application from categoryCards list on the LandingPage
    * Click the loginButton on the ToolsPage
    * Fill component form input of LoginWrapper component on the loginPage
      | Input Element | Input            |
      | userName      | CONTEXT-userName |
      | password      | CONTEXT-password |
    * Click component element loginButton of LoginWrapper component on the loginPage
    * Wait for page
    * Scroll down
    * Click the profileButton on the ToolsPage
    * Scroll down
    * Verify the book info for the user in context

  @Authenticate @Web-UI
  Scenario: Add book to user Bookstore
    * Add book with Isbn 9781449325862 to user in context
    * Get the user in context
    * Navigate to the test page
    * Click listed element Book Store Application from categoryCards list on the LandingPage
    * Click the loginButton on the ToolsPage
    * Fill component form input of LoginWrapper component on the loginPage
      | Input Element | Input            |
      | userName      | CONTEXT-userName |
      | password      | CONTEXT-password |
    * Click component element loginButton of LoginWrapper component on the loginPage
    * Wait for page
    * Scroll down
    * Click the profileButton on the ToolsPage
    * Scroll down
    * Verify added book

  @Web-UI
  Scenario: Homepage elements Texts
    * Navigate to the test page
    * Verify text of listed button name listed element Elements from categoryCards list on the LandingPage as equal to Elements
    * Verify text of listed button name listed element Forms from categoryCards list on the LandingPage as equal to Forms
    * Verify text of listed button name listed element Alerts, Frame & Windows from categoryCards list on the LandingPage as equal to Alerts, Frame & Windows
    * Verify text of listed button name listed element Widgets from categoryCards list on the LandingPage as equal to Widgets
    * Verify text of listed button name listed element Interactions from categoryCards list on the LandingPage as equal to Interactions
    * Verify text of listed button name listed element Book Store Application from categoryCards list on the LandingPage as equal to Book Store Application

  @Authenticate
  Scenario: Delete book from bookstore
    * Add book with Isbn 9781449325862 to user in context
    * Wait for page
    * Delete book with Isbn 9781449325862 to user in context


