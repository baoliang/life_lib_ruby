#encoding=utf-8
require 'open-uri'
require 'fiber'
#同步模式
def s_get_url url
  doc = open(url)
  p doc.charset
  p doc.base_uri.host
end

#异步模式
def a_get_url url
  f = Fiber.new do 
  	
  	Fiber.yield open(url)

 	end
	p doc
	p doc.charset
	p doc.base_uri.host
end

list = ['http://www.baidu.com/', 'http://www.qiyi.com/', 'http://www.idianying.tv/']
"""
p '同步模式 开始了'
3.times do  |i|
	s_get_url list[i]
	p i
end

p '异步模式开始了'
a = nil
3.times do  |i|
	f = a_get_url list[i]
	f.resume
	a = f
	a.resume if a
	p i
end
"""
  
 f=Fiber.new do |a,b|
   Fiber.yield 
   p a,b
end

p f.resume(10,10)
p f.resume(3,4)
p f.resume


