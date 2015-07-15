
def get_products_of_all_ints_except_at_index(integers)
  products = []
  excluded_index = 0
  integers.length.times do
    products << integers.values_at(0...excluded_index,(excluded_index+1)..-1).reduce(:*)
    excluded_index += 1
  end
  products
end

sample = [1, 7, 3, 4]
with_zeros = [1, 0, 3]

p get_products_of_all_ints_except_at_index(sample) == [84, 12, 28, 21]
p get_products_of_all_ints_except_at_index(with_zeros) == [0, 3, 0]
