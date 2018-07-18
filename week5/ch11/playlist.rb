### Copy in your shuffle method first
def shuffle some_array
  return some_array.sort_by{rand}
end

### Now use it to build your playlist:
Dir.chdir['']
music_list = Dir['/Users/KevinGao/Documents/bootcampcode/**/**/*.ogg']
shuffle music_list
listname = 'playlist.m3u'
File.open listname 'w' do |file|
  music_list.each do |song|
    file.write song
    end
end
