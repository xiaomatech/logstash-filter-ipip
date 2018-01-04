# logstash-filter-ipip
logstash的 ipip 收费版 filter
结果集做了lrucache

#build
```
    gem build logstash-filter-ipip.gemspec
```
#install
 ```
    /usr/share/logstash/bin/logstash-plugin install --no-verify logstash/plugin/logstash-filter-ipip-2.0.0.gem
 ```

## 例子
```ruby
filter {
     ipip {
       source => "remote_addr"
     }
}
```
