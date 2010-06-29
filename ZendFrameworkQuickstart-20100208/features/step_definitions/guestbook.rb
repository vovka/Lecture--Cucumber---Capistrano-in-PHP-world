# encoding: utf-8
require 'xml/libxml'

Допустим /^пользователь заходит на (.+)$/ do |page_name|
  visit path_to(page_name)
end

То /^он|^пользователь должен увидеть офигенную страницу$/ do
  xhtml_validation(response_body).should be_true
end

#####

def path_to(page_name)
  'http://quickstart.local' + case page_name
  when /^главную страницу$|^главная страница$/
    '/'
  else
    '/default'
  end
end

# Thanks to http://www.jandaweb.com/blog_posts/7
def xhtml_validation doc
  dtd = XML::Dtd.new("-//W3C//DTD XHTML 1.0 Strict//EN", 
    File.join(File.dirname(__FILE__), '../../public/xhtml1-strict.dtd'))
  XML::Document.string(doc).validate(dtd)
end

