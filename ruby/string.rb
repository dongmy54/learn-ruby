# 反转字符串顺序
"dmy".reverse   # => "ymd"


#===================================================================================#
# concat 字符串、数组都可用
str1 = "abc"
str2 = "def"
puts str1.concat(str2)
# abcdef
arr1 = (1..3).to_a
arr2 = (4..6).to_a
puts arr1.concat(arr2)
# 1 2 3 4 5 6


#===================================================================================#
# chomp
# 删除字符串末尾的东东
# 1、当不传参数时（删除换行 \r \n \r\n)
# 2、传参数时 从末尾删除匹配的 参数
a = "dmy\r\n"
a.chomp        # => "dmy"
b = "dmy\n"
b.chomp        # => "dmy"
c = 'dmy'      
c.chomp('my')  # => "d"
d = 'dmy'
d.chomp        # => "dmy"


#===================================================================================#
# chop（删除字符串末尾字符）
# 和 chomp 区别在于 
# 1、 它无论如何都要删掉一个(才甘心)
# 2、 它不需要参数
a = "string\r\n"
a.chop            # => "string"
b = "string\n"
b.chop            # => "string"
c = "string"
c.chop            # => "strin"
d = 's'
d.chop            # => ""