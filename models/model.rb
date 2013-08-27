module Site
  class Comment
    def initialize(file="comment.pstore")
      @file = file
    end

    def store
      @store ||= PStore.new(@file)
    end
  end
end
