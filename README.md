## URL Shortener

### Overview
This is Rails application for URL shortening. You can deploy this app on internet. 
User can enter the url which he/she wants to shorten, our application will generate the short url for it. So, that user can share that url to people. If anybody hit that short URL, it gets redirected to the actual url.

* Rails version: v4.1.1

* Ruby version: v2.3.1

* Database Used:  PostgreSQL

### Encoding/Decoding Module:
Encoding/Decoding functionality is implemented in [lib/shortener.rb](lib/shortener.rb).

### Deployment:
##### On Local:
* Clone the repository
    ```
    $ git clone https://github.com/amitgurav04/url_shortener.git
    ```
* Change directory
    ```
    $cd url_shortener
    ```
* Install dependencies
    ```
    $ bundle install
    ```
* Create database
    ```
    $ rake db:create
    ```
* Migrate database schema
    ```
    $ rake db:migrate
    ```
* Start server
    ```
    $ rails s
    ```
* Open [localhost:3000](http://localhost:3000) in browser

After running successfully you can deploy the app on Heroku or any other server
Here, I am giving steps to deploy on Heroku
##### On Heroku:
Run following commands from url_shortener directory
* Login to Heroku using cli. You need to enter username and password for your Heroku account
    ```
    $ heroku login
    ```
* Create app on Heroku
    ```
    $ heroku create
    ```
* Verify that the remote was added to your project.
    ```
    $ git config --list | grep heroku
    ```
* Deploy application
    ```
    $ git push heroku master
    ```
    After successful push you can migrate database.
* Migrate database
    ```
    $ heroku run rake db:migrate
    ```
* Open URL of running application in browser
    ```
    $ heroku open
    ```

### How to Use
* Open [How to Use](doc/how-to-use.md) section. It helps you to generate short url on [https://amit-mini-url.herokuapp.com/](https://amit-mini-url.herokuapp.com/)

