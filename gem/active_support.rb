#### 全部加载
require 'active_support/all'

#### 核心加载
require 'active_support'
require 'active_support/core_ext'

#### 类加载
require 'active_support'
require 'active_support/core_ext/object'

#### 文件加载
require 'active_support'
require 'active_support/core_ext/object/blank.rb'


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