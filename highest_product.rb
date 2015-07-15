# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.

def highest_product(array_of_ints)
  largest_positive = array_of_ints.sort[-3..-1].reduce(:*)
  test_for_negatives = array_of_ints.sort.values_at(0..1,-1).reduce(:*)
  largest_positive > test_for_negatives ? largest_positive : test_for_negatives
end

random = [5, 2, 1, 6]
negatives = [-50, -3, 1, 2]

p highest_product(random) == 60
p highest_product(negatives) == 300
