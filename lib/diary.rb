class Diary
    def initialize
        @diary = []
    end
    def add(entry) # entry is an instance of DiaryEntry
        @diary << entry
    end
  
    def entries
      # Returns a list of DiaryEntries
      return @diary
    end
  
    def count_words
      # Returns the number of words in all entries
      return @diary.map do |entry|
        entry.count_words
      end.sum
    end
end