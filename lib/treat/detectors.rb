module Treat
  # Detectors detect a specific meta-information about
  # an entity, such as encoding, format and language.
  # 
  # Detectors are language-independent, and thus they 
  # are default algorithms specified for each of them.
  module Detectors
    # Group for algorithms that detect encoding.
    module Encoding 
      extend Group
      self.type = :annotator
      self.targets = [:entity]
      self.default = :native
    end
    # Group for algorithms that support format detection.
    module Format
      extend Group
      self.type = :annotator
      self.targets = [:entity]
      self.default = :file
    end
    # Group for algorithms that do language detection.
    module Language
      extend Group
      self.type = :annotator
      self.targets = [:entity]
      self.default = :what_language
    end
    extend Treat::Category
  end
end