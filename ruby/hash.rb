# hash 后面接 key 输出value
{
  :a => 'A',
  :b => 'B'
  }[:a]   # => 'A'


#===================================================================================#
# find/detect方法 返回满足条件的元素 find detect 等价
h = {:'1' => 'g', :'2' => 'o', :'3' => 'p'}
k,v = h.find {|k,v| v == 'o'}
puts k,v
# :'2'
# 'o'


#===================================================================================#
# fetch
# 从hash取一个没有的键时，可通过带参数默认
h = {:a => 'A',:b => 'B'}
h.fetch(:z, 'd')
# => 'd'