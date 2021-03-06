# Seed the company  DB with some companies.
more_companies = [
  {:name => 'Sprint', :coverage_area => 'Central',
    :price_range => '75-120'},
  {:name => 'Verizon', :coverage_area => 'Central',
    :price_range => '95-145'},
  {:name => 'Tmobile', :coverage_area => 'Central',
    :price_range => '55-100'},
  {:name => 'AT&T', :coverage_area => 'Central',
    :price_range => '90-135'}
]

Company.send(:attr_accessible, :name, :coverage_area, :price_range)
more_companies.each do |company|
 Company.create!(company)
end
