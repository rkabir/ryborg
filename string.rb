module Ryborg
    def scrub
      out = self.downcase
      out = out.strip
      while out =~ /\w*\W$/
        out.chop!
      end
      while out =~ /^\W\w+/
        out.slice!(0,1)
      end
      return out
    end
end
