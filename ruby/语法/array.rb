# clear 清空数组
a = [1,5,6]
a.clear
# => []


#===================================================================================#
# pop     尾部弹出元素
# shift   首部弹出元素
# unshift 首部插入元素
# PS：都会改变数组本身
arr = [2,4,7,9,3]

arr.pop   # => 3 尾
puts arr.inspect
# [2, 4, 7, 9]

arr.shift # => 2 首
puts arr.inspect
# [4, 7, 9]

arr.unshift 5 # 首部插入
puts arr.inspect
# [5, 4, 7, 9]


#===================================================================================#
# 产生数组
# 1、（）中个数
# 2、 块中每个元素
Array.new(5){ rand(100) }
# => [
#        [0] 54,
#        [1] 55,
#        [2] 48,
#        [3] 71,
#        [4] 67
#    ]


#===================================================================================#
# 数组转字符串
# 等价于 .join(",")
a = [5,7,9] * ','
# => "5,7,9"


#===================================================================================#
# 从值到索引
a = [5,7,9]
a.index(7)
# => 1


#===================================================================================#
# fetch 获取默认值
a = [5,8,9,2]
a.fetch(2,'no exist')
# => 9
a.fetch(100, 'no exist')
# => 'no exist'


#===================================================================================#
# 返回 去重后 数组
# uniq! 改变自身
a = [1,2,5,2,1,5]
a.uniq
# => [
# =>     [0] 1,
# =>     [1] 2,
# =>     [2] 5
# => ]


#===================================================================================#
# compact 去除数组中 nil 元素
a = [5,6,8,nil,10,nil,14]
a.compact
# => [
# =>     [0] 5,
# =>     [1] 6,
# =>     [2] 8,
# =>     [3] 10,
# =>     [4] 14
# => ]


#===================================================================================#
# << << 向数组中连续追加元素
arr = [3,5]
arr << 'd' << 'k'
# => [3,5,'d','k']


#===================================================================================#
# 数组快速求和
[2,5,6,8].reduce(:+)
# => 21


#===================================================================================#
# to_a 快速创建 区域数组
('a'..'z').to_a
# => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]


#===================================================================================#
# include? 是否包含
%w(saf qw ewer dsd).include?('saf')
# => true


#===================================================================================#
# 判断 两个数组中 元素是否相同
a = [1,3,5,4]
b = [5,3,4,1]
a.sort == b.sort
# => true


#===================================================================================#
# 两数组 合并 成新组成
# 等价于 a.concat(b)
a = [1,3,4]
b = [1,3,8]
a += b
# => [
# =>     [0] 1,
# =>     [1] 3,
# =>     [2] 4,
# =>     [3] 1,
# =>     [4] 3,
# =>     [5] 8
# => ]


#===================================================================================#
# 两数组 求 交集
a = [1,3,5,7]
b = [3,1,8]
a &= b
# => [
# =>     [0] 1,
# =>     [1] 3
# => ]


#===================================================================================#
# | 将 多个数组 整合
# 并 去重
a = [2,5,8]
b = [2,6,9]
c = a | b
# => [2, 5, 8, 6, 9]


#===================================================================================#
# [] 与 slice 等价
# 参数可为 范围 /（起点,长度）
a = [2,5,8,6,9]
a.slice(0..2) # => [2, 5, 8]
a[0..2]       # => [2, 5, 8]
a.slice(0,3)  # => [2, 5, 8]
a[0,3]        # => [2, 5, 8]


#===================================================================================#
# rotate 让数组元素 流动(索引)
# 有 rotate 和 rotate! 方法
a = [2,5,6,8]
a.rotate!(2)
# => [6, 8, 2, 5]


#===================================================================================#
# sample 随机从数组中取出x个元素
a = [1,5,7,3,6,9]
a.sample(3)
# => [6, 7, 1]
a.sample(3)
# => [9, 7, 5]


#===================================================================================#
# combination 数组组合形式
a = [1,5,9,7,3]
a.combination(3).to_a
# => [[1, 5, 9], 
# =>  [1, 5, 7], 
# =>  [1, 5, 3], 
# =>  [1, 9, 7], 
# =>  [1, 9, 3], 
# =>  [1, 7, 3], 
# =>  [5, 9, 7], 
# =>  [5, 9, 3], 
# =>  [5, 7, 3], 
# =>  [9, 7, 3]]


#===================================================================================#
# reject delete_if 删除数组中某些元素
# 等价
Array(1..10).reject {|i| i % 3 == 0}
Array(1..10).delete_if {|i| i % 3 == 0}
# => [
#        [0] 1,
#        [1] 2,
#        [2] 4,
#        [3] 5,
#        [4] 7,
#        [5] 8,
#        [6] 10
#    ]


#===================================================================================#
# keep_if 留下数组中 满足条件的元素
a = [10,8,5,9]
a.keep_if {|i| i % 3 == 0}
# [9]


#===================================================================================#
# 测试一个
a = [1,2,3,4,5,6]
a.join('q')       # 1q2q3q4q5q6


#===================================================================================#
# 用*展开数组 赋值
arr = [2,5,8]
a,b,c = *arr  # * 展开数组
[a,b,c].each {|i| puts i}
# => 2
# => 5
# => 8


#===================================================================================#
# min_by 找出满足条件最小的 值
[2, 6, 9, 14].min_by{|i| (i - 10).abs}
# => 9

# max_by 找出满足条件最大的 值
[2, 6, 9, 14].max_by{|i| (i - 10).abs}
# => 2


#===================================================================================#
# any? 数组元素 是否有满足条件的（只要有一个 返回true）
a = [1,2,3,8]
a.any? {|i| i > 3}
# => true
a.any? {|i| i < 0}
# => false


#===================================================================================#
# all? 数组元素 所有都满足条件
a = [1,2,3,8]
a.all? {|i| i > 3}
# => false


#===================================================================================#
# 每三个分组
(1..10).each_slice(3){|i| p i}
# [1, 2, 3]
# [4, 5, 6]
# [7, 8, 9]
# [10]
#  => nil


#===================================================================================#
# map 映射一个新数组
%w(ad sdaf sadf sadf).map {|i| i.capitalize}
# => [
# =>     [0] "Ad",
# =>     [1] "Sdaf",
# =>     [2] "Sadf",
# =>     [3] "Sadf"
# => ]


#===================================================================================#
# select 做筛选
h = [{:a => 'A', :b => 'd'},
     {:a => 'w', :b => 'r'},
     {:a => 'w', :b => 't'}]

a = h.select{|x| x[:a] == 'A'}
# =>   [
#          [0] {
#              :a => "A",
#              :b => "d"
#          }
#      ]


#===================================================================================#
# inject 与 reduce 
# 相同的两个方法
# 返回迭代完最后一次计算值
# 目的,避免写出 sum = 0; [1,2,3].each{|i| sum += i} 这样的代码
puts [1,2,3].inject {|sum,v| sum + v }    # => 6
puts [1,2,3].reduce {|sum,v| sum + v }    # => 6
puts [1,2,3].inject(2) {|sum,v| sum + v } # => 8

# 第一个参数：初始值；第二个参数：计算方式
puts [1,2,7].inject(1){|sum,v| sum+=v;sum} # 11 
puts [1,2,7].inject(1,&:+)                 # 11 与上面等价

#===================================================================================#
# flatten 摊平数组
# 接参数时 表示摊平层级
arr = [1,2,3,[2,[5,6],3],8]
arr.flatten
# => [1,2,3,2,5,6,3,8]
arr.flatten(1)
# => [1,2,3,2,[5,6],3,8]


#===================================================================================#
# hash数组 排序
# 利用 元素 中 某个键的值 排序
data = [{:a => 1,:b => 'qw'},
        {:a => -2, :b => 'ji'},
        {:a => 3, :b => 'swe'},
        {:a => 2, :b => 'sdd'}]

data.sort_by {|i| i[:a]}
# => [{:a=>-2, :b=>"ji"},
# =>  {:a=>1, :b=>"qw"},
# =>  {:a=>2, :b=>"sdd"},
# =>  {:a=>3, :b=>"swe"}]

#===================================================================================#
# sort_by 块中接数组
# 先按xx 排序，再按yy 排序
arr = [
  {a: 12,
   b: 23},
  
  {a: 23,
   b: 8},
  
  {a: 12,
   b: 20}
]

arr.sort_by! {|e| [e[:a],e[:b]] }
puts arr.inspect
# [{:a=>12, :b=>20}, {:a=>12, :b=>23}, {:a=>23, :b=>8}]


#===================================================================================#
# grep 过滤
# 无块 返回数组
"str".methods.grep(/(a[lb])/) do
  puts $1
end

# al
# al
# al
# al
# al
# al
# ab
# ab
# ab
# ab
# ab
# al
# al


#===================================================================================#
# 元素做 key 转hash
# 1. 带参数、初始化值
# 2. ;参数 可
[2,4,6].inject(Hash.new(0)) {|h,e| h[e] +=2; h}
# {2=>2, 4=>2, 6=>2}


#===================================================================================#
# group_by 按条件分组
# 返回hash value是数组
names = %w(Bob ZhangLong BoLi ZhangHan)
puts names.group_by{|name| name[0]}.inspect

# {
#   "B"=>["Bob", "BoLi"], 
#   "Z"=>["ZhangLong", "ZhangHan"]
# }


#===================================================================================#
# zip 组合两个数组为多维
# PS: 多出部分省略
arr1 = %w(hu bar ddd)
arr2 = %w(12 34 56 67)

arr1.zip(arr2)
# => [["hu", "12"], ["bar", "34"], ["ddd", "56"]]

arr1.zip(arr2).to_h
# => {"hu"=>"12", "bar"=>"34", "ddd"=>"56"}



