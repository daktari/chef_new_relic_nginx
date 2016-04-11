
# New Relic nginx plugin
Configures nginx plugin for new-relic


Environment config:
```
{
    :new_relic_nginx => {
      :config => {
        :license_key => "YOUR_NEW_RELIC_KEY",
        :source_name => "someurl.com",
        :status_url => "http://www.someurl.com/nginx/status"
      }
    }
}
```
