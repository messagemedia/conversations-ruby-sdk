# Getting started

Conversations Api Documentation

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

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Conversations-Ruby&workspaceName=MessageMediaConversations&projectName=message_media_conversations&gemName=message_media_conversations&gemVer=1.0.0&initLine=client%2520%253D%2520MessageMediaConversationsClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [ProvisioningController](#provisioning_controller)
* [AppUsersController](#app_users_controller)
* [FacebookController](#facebook_controller)

## <a name="provisioning_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ProvisioningController") ProvisioningController

### Get singleton instance

The singleton instance of the ``` ProvisioningController ``` class can be accessed from the API Client.

```ruby
provisioning_controller = client.provisioning
```

### <a name="create_provision_account_using_post"></a>![Method: ](https://apidocs.io/img/method.png ".ProvisioningController.create_provision_account_using_post") create_provision_account_using_post

> Provisions an account to use the Conversations API.


```ruby
def create_provision_account_using_post(request); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| request |  ``` Required ```  | request |


#### Example Usage

```ruby
request = ProvisionAccountRequest.new

provisioning_controller.create_provision_account_using_post(request)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



[Back to List of Controllers](#list_of_controllers)

## <a name="app_users_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AppUsersController") AppUsersController

### Get singleton instance

The singleton instance of the ``` AppUsersController ``` class can be accessed from the API Client.

```ruby
appUsers_controller = client.app_users
```

### <a name="create_send_message_using_post"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.create_send_message_using_post") create_send_message_using_post

> Sends a message to the App User with the given ID.


```ruby
def create_send_message_using_post(app_user_id,
                                       message); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| app_user_id |  ``` Required ```  | appUserId |
| message |  ``` Required ```  | message |


#### Example Usage

```ruby
app_user_id = 'appUserId'
message = BaseMessageDto.new

appUsers_controller.create_send_message_using_post(app_user_id, message)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



### <a name="get_app_user_messages_using_get"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.get_app_user_messages_using_get") get_app_user_messages_using_get

> Gets the list of messages for the App User with the given ID.


```ruby
def get_app_user_messages_using_get(app_user_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| app_user_id |  ``` Required ```  | appUserId |


#### Example Usage

```ruby
app_user_id = 'appUserId'

result = appUsers_controller.get_app_user_messages_using_get(app_user_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



### <a name="get_app_user_using_get"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.get_app_user_using_get") get_app_user_using_get

> Gets the App User with the given ID.


```ruby
def get_app_user_using_get(app_user_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| app_user_id |  ``` Required ```  | appUserId |


#### Example Usage

```ruby
app_user_id = 'appUserId'

result = appUsers_controller.get_app_user_using_get(app_user_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



### <a name="get_app_users_using_get"></a>![Method: ](https://apidocs.io/img/method.png ".AppUsersController.get_app_users_using_get") get_app_users_using_get

> Gets a list of App Users that belong to the provisioned account.


```ruby
def get_app_users_using_get; end
```

#### Example Usage

```ruby

result = appUsers_controller.get_app_users_using_get()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



[Back to List of Controllers](#list_of_controllers)

## <a name="facebook_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FacebookController") FacebookController

### Get singleton instance

The singleton instance of the ``` FacebookController ``` class can be accessed from the API Client.

```ruby
facebook_controller = client.facebook
```

### <a name="create_integrate_facebook_page_using_post"></a>![Method: ](https://apidocs.io/img/method.png ".FacebookController.create_integrate_facebook_page_using_post") create_integrate_facebook_page_using_post

> Integrates the Facebook page with the given ID with the provisioned account.


```ruby
def create_integrate_facebook_page_using_post(facebook_page_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| facebook_page_id |  ``` Required ```  | facebookPageId |


#### Example Usage

```ruby
facebook_page_id = 'facebookPageId'

facebook_controller.create_integrate_facebook_page_using_post(facebook_page_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



### <a name="get_facebook_pages_using_get"></a>![Method: ](https://apidocs.io/img/method.png ".FacebookController.get_facebook_pages_using_get") get_facebook_pages_using_get

> Gets a list of Facebook pages belonging to the provisioned and Facebook authorised account.


```ruby
def get_facebook_pages_using_get; end
```

#### Example Usage

```ruby

result = facebook_controller.get_facebook_pages_using_get()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



### <a name="get_facebook_authorisation_url_using_get"></a>![Method: ](https://apidocs.io/img/method.png ".FacebookController.get_facebook_authorisation_url_using_get") get_facebook_authorisation_url_using_get

> Once an account has been provisioned, endpoint can be called to get the Facebook authorisation URL.


```ruby
def get_facebook_authorisation_url_using_get; end
```

#### Example Usage

```ruby

result = facebook_controller.get_facebook_authorisation_url_using_get()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |



[Back to List of Controllers](#list_of_controllers)



