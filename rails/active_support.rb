require 'active_support'
require 'active_support/core_ext'

# 数组中 不包含
%w(sda sdaf sdaf).exclude?('qw') 
# => true

# 字符串中 不包含
"sdaf".exclude?('sd')
# => false

# 字符串转常量
'Module'.constantize
# Module 常量

#驼峰命令
'active_record'.camelize
# => "ActiveRecord"

# symbolize_keys 将 字符串键 转 符号
# 有 symbolize_keys 方法
h = {'a' => 'aww', 'b' => 'qww'}
puts h.symbolize_keys
# {:a=>"aww", :b=>"qww"}

#deep_dup(避免修改副本元素，引起原值改变)
# 比如
a = %w(hu)
b = a.clone

b << 'bar'                   # 这个时候 a 仍不受影响
b.first.gsub!('hu', 'kkk')   # a值改变了

a  # => ["kkk"]
b  # => ["kkk", "bar"]

c = %w(hu)
d = c.deep_dup

d << 'bar'
d.first.gsub!('hu', 'kkk')    # 改变元素 c 不受影响

c # => ["hu"]
d # => ["kkk", "bar"]

# with_indifferent_access 字符串、符号都可以访问到
h = {a: '12', b: '34'}.with_indifferent_access
h[:a]
h['a']



