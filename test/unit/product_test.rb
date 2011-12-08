require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products


  test "product is not valid without a unique title" do
    product = Product.new(:name => products(:pizza).name,
             :ingredients => "pepperoni",
             :price =>1,
             :image_url => "pizza.jpg")

    assert !product.save
    assert_equal "has already been taken", product.errors[:name].join(':')

  end


  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:ingredients].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new( :name    =>"pizza",
                            :ingredients => "pepperoni",
                            :image_url => "pizza.jpg")

    product.price = -1
    assert product.invalid?
    assert_equal "must be greater than or equal to 0.01",
      product.errors[:price].join(';')

   product.price = 0
    assert product.invalid?
    assert_equal "must be greater than or equal to 0.01",
      product.errors[:price].join(';')

    product.price = 1
    assert product.valid?

  end

    def new_product(image_url)
    Product.new(:name => "Pizza",
                :ingredients=>"pepperoni",
                :price=> 1,
                :image_url=> image_url)
  end

  test "image url" do
    ok = %w{ pizza.gif pizza.jpg pizza.png PIZZA.JPG PIZZA.Jpg
            http://a.b.c/x/y/z/fred.gif }

    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldn't be invalid"
    end
  end
  end
