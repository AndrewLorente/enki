Given /there is at least one post tagged "([\w\s]+)"/ do |tag_name|
  Factory(:post, :tags => [Factory(:tag, :name => tag_name)])
end

Given /there is at least one post titled "([\w\s]+)"/ do |title|
  Factory(:post, :title => title)
end
