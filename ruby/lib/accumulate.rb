# Monkey Patch
# - add accumulate method
class Array
  def accumulate
    each.with_object([]) do |item, accumulator|
      accumulator << yield(item)
    end
  end
end
