# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '1_gilded_rose')

items = [
  Item.new('Sulfuras, Hand of Ragnaros', 0, 80),
  Item.new('Sulfuras, Hand of Ragnaros', -1, 80)
]

days = 2
days = ARGV[0].to_i + 1 if ARGV.length.positive?

gilded_rose = GildedRose.new items

(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts "name, sellIn, quality"
  items.each do |item|
    puts item
  end
  puts ""
  gilded_rose.update_quality
end
