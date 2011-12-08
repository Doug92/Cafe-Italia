module ApplicationHelper

  def currency_euro (item)
    number_to_currency(item, :unit => "&euro;", :separator => ",", :delimiter => "", :format => "%u %n")
  end
end
