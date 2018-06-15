# Getting started

The Conversations API allows users to communicate by sending and receiving messages via Over-The-Top (OTT) messaging services. OTT application is an app or service that provides a product over the Internet and bypasses traditional distribution. Here's an in-depth explanation of what the term means.This feature is disabled by default. To enable it, you don't need to make any changes to your application, just an account configuration change by MessageMedia's support team support@messagemedia.com.For our initial release, we're releasing Facebook Messenger which allows you to send messages as a Facebook page owner and receive messages from other Facebook users.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build message_media_conversations.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install message_media_conversations-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations-Ruby&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

## How to Use

The following section explains how to use the MessageMediaConversations Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the MessageMediaConversations gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'message_media_conversations', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=MessageMediaConversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MessageMediaConversations::MessageMediaConversationsClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Conversations%20%28Beta%29-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0&initLine=client%2520%253D%2520MessageMediaConversationsClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [AppUsersController](#app_users_controller)
* [ConfigurationController](#configuration_controller)
* [FacebookController](#facebook_controller)

## <a name="app_users_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AppUsersController") AppUsersController

### Get singleton instance

The singleton instance of the ``` AppUsersController ``` class can be accessed from the API Client.

```ruby
appUsers_controller = client.app_users
```

### <a name="create_send_message"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.create_send_message") create_send_message

> Sends a message to the App User with the given ID.
> You can use this endpoint in conjuction with the app users or app user by id endpoint where the response from one of the latter endpoints would display the user id and this can be used with this endpoint to send a message to that user. A successful response from this endpoint will have the following structure:
> ```
> {
>   "channel": "facebook",
>   "text": "Thank you for your query we'll be in touch with an answer shortly."
> }
> ```


```ruby
def create_send_message(app_user_id,
                            body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| app_user_id |  ``` Required ```  | appUserId |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
app_user_id = 'appUserId'
body = BaseMessageDto.new

result = appUsers_controller.create_send_message(app_user_id, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | The posted request is invalid or the account is not provisioned. |
| 404 | The app user does not exist. |



### <a name="get_app_user_messages"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.get_app_user_messages") get_app_user_messages

> Gets the list of messages sent to and received by the App User with the given ID. A successful response from this endpoint will have the following structure:
> ```
> {
>   "messages": {
>     "data": [
>       {
>         "direction": "RECEIVED",
>         "text": "Hey, I was just wondering how much shipping would be to Australia for one of them awesome t-shirts?",
>         "channel": "FACEBOOK",
>         "timestamp": "2017-12-12T18:18:40.000Z"
>       },
>       {
>         "direction": "SENT",
>         "text": "Thank you for your query we'll be in touch with an answer shortly.",
>         "channel": "FACEBOOK",
>         "timestamp": "2017-12-08T10:12:16.000Z"
>       }
>     ]
>   },
>   "metadata" : {
>     "user_id": "{id}",
>     "account_id": "FunGuys007"
>   }
> }
> ```


```ruby
def get_app_user_messages(app_user_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| app_user_id |  ``` Required ```  | appUserId |


#### Example Usage

```ruby
app_user_id = 'appUserId'

result = appUsers_controller.get_app_user_messages(app_user_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | The app user does not exist. |



### <a name="get_app_user_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.get_app_user_by_id") get_app_user_by_id

> Gets the App User with the given ID. A successful response from this endpoint will have the following structure:
> ```
> {
>   "id": "3898c5e4-73cc-44f9-812f-3698a4c3bb1d",
>   "surname": "Sims",
>   "given_name": "Ben"
> }
> ```


```ruby
def get_app_user_by_id(app_user_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| app_user_id |  ``` Required ```  | appUserId |


#### Example Usage

```ruby
app_user_id = 'appUserId'

result = appUsers_controller.get_app_user_by_id(app_user_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | The app user does not exist. |



### <a name="get_app_users"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.get_app_users") get_app_users

> Gets a list of App Users that belong to the configured account. A successful response from this endpoint will have the following structure:
> ```
> {
>   "data": [
>     {
>       "id": "3898c5e4-73cc-44f9-812f-3698a4c3bb1d",
>       "surname": "Sims",
>       "given_name": "Ben"
>     },
>     {
>       "id": "331b1da8-10a5-44c7-91df-1dc14cc2f373",
>       "surname": "Hood",
>       "given_name": "Robert"
>     }
>   ]
> }
> ```


```ruby
def get_app_users; end
```

#### Example Usage

```ruby

result = appUsers_controller.get_app_users()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="configuration_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConfigurationController") ConfigurationController

### Get singleton instance

The singleton instance of the ``` ConfigurationController ``` class can be accessed from the API Client.

```ruby
configuration_controller = client.configuration
```

### <a name="create_configure_account"></a>![Method: ](https://apidocs.io/img/method.png ".ConfigurationController.create_configure_account") create_configure_account

> Configures your existing MessageMedia account to use the Conversations API by giving it a human readable name (for reference later on), and also by specifying a callback URL which is where any Inbound Messages and/or Notifications will be pushed to. The request would have the following structure:
> ```
> {
>   "name": "Rainbow Serpent Festival",
>   "callback_url": "http://accounts-domain.com/callback"
> }
> ```
> * `name` is a required property and is a customer friendly name to identify your provisioned account
> * `callback_url` is an optional property is the callback URL to forward inbound messages to.
> *Note: We are currently NOT using our Webhooks functionality for this while it's in beta, when we make this production ready we will look at switching to having these webhooks managed via the Webhooks Management API*


```ruby
def create_configure_account(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body_value = "{    \"name\": \"Rainbow Serpent Festival\",    \"callback_url\": \"https://callback.url.com\"}";
body = JSON.parse(body_value);

result = configuration_controller.create_configure_account(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Not a valid request body. |
| 409 | The account has already been provisioned. |



[Back to List of Controllers](#list_of_controllers)

## <a name="facebook_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FacebookController") FacebookController

### Get singleton instance

The singleton instance of the ``` FacebookController ``` class can be accessed from the API Client.

```ruby
facebook_controller = client.facebook
```

### <a name="create_integrate_facebook_page"></a>![Method: ](https://apidocs.io/img/method.png ".FacebookController.create_integrate_facebook_page") create_integrate_facebook_page

> Integrates the Facebook page with the given ID with the configured account.


```ruby
def create_integrate_facebook_page(facebook_page_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| facebook_page_id |  ``` Required ```  | facebookPageId |


#### Example Usage

```ruby
facebook_page_id = 'facebookPageId'

result = facebook_controller.create_integrate_facebook_page(facebook_page_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | The account is not provisioned or the Facebook user isn't authenticated or the facebookPageId is invalid. |



### <a name="get_facebook_pages"></a>![Method: ](https://apidocs.io/img/method.png ".FacebookController.get_facebook_pages") get_facebook_pages

> Gets a list of Facebook pages belonging to the provisioned and Facebook authorised account. A successful response from this endpoint will have the following structure:
> ```
> {
>   "data": [
>     {
>       "id": "1573307926039629",
>       "name": "Rainbow Serpent Festival"
>     },
>     {
>       "id": "373479609790958",
>       "name": "Fans of Doing Live Demos"
>     }
>   ]
> }
> ```


```ruby
def get_facebook_pages; end
```

#### Example Usage

```ruby

result = facebook_controller.get_facebook_pages()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | The account is not provisioned or the Facebook user isn't authenticated. |



### <a name="get_facebook_authorisation_url"></a>![Method: ](https://apidocs.io/img/method.png ".FacebookController.get_facebook_authorisation_url") get_facebook_authorisation_url

> Before you can start integrating Facebook pages on your Facebook account, MessageMedia's messaging platform needs access to that page via what Facebook call a page access token. To get the page access token you first need to provide MessageMedia limited access to your Facebook account.
> Calling this endpoint will get the Facebook authorisation URL which you are required to go through before you can call the integration endpoints. A successful response from this endpoint will have the following structure:
> ```
> {
>   "authorisation_url": "https://www.facebook.com/v2.12/dialog/oauth?client_id={facebookAppId}&amp;redirect_uri={apiUrl}/beta/integration/authenticated&amp;state={provisionedAccountUUID}&amp;response_type=token&amp;scope=email,manage_pages,pages_messaging"
> }
> ```
> *Note: Granting MessageMedia access will only see allow us to see your basic details and the list of pages you have*


```ruby
def get_facebook_authorisation_url; end
```

#### Example Usage

```ruby

result = facebook_controller.get_facebook_authorisation_url()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | The account is not provisioned |



[Back to List of Controllers](#list_of_controllers)
