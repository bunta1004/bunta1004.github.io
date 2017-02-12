class NoteController < ApplicationController
  layout 'note'

  def initialize
    super
    begin
      @dengon_data = JSON.parse(File.read("data.txt"))
    rescue
      @dengon_data = Hash.new
    end
  @dengon_data.each do |key,obj|
    if Time.now.to_i - key.to_i > 3*60*60 then
      @dengon_data.delete(key)
    end
  end
  File.write("data.txt", @dengon_data.to_json)
  end

  def index
    if request.post? then
      obj = MyData.new(name:params['name'], memo:params['memo'],)
      @dengon_data[Time.now.to_i] = obj
      data = @dengon_data.to_json
      File.write("data.txt", data)
      @dengon_data = JSON.parse(data)
    end
  end



end

class MyData
  attr_accessor :name
  attr_accessor :memo

    def initialize name:name, memo:memo
      self.name = name
      self.memo = memo
    end

end
