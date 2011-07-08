# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

WINE_TYPES = [
  "Albana",
  "Blend",
  "Cabernet-Sauvignon",
  "Chardonnay",
  "Cortese",
  "Falanghina",
  "Gaglioppo nero",
  "Greco bianco",
  "Grignolino",
  "Malbec",
  "Montepulciano",
  "Nebbiolo",
  "Pignoletto",
  "Pinot noir",
  "Prosecco",
  "Sauvignon blanc",
  "Syrah",
  "Verdicchio",
  "Viognier",
  "Arneis",
  "Brachetto",
  "Cannonau",
  "Chenin blanc",
  "Corvina veronese",
  "Favorita",
  "Gamay",
  "Grenache",
  "Insolia",
  "Marselan",
  "Müller-thurgau",
  "Négrette",
  "Pinot blanc",
  "Piquepoule blanc",
  "Riesling",
  "Savagnin",
  "Tannat",
  "Verduzzo Friulano",
  "Barbera",
  "Cabernet franc",
  "Carignan",
  "Cinsaut",
  "Dolcetto",
  "Freisa",
  "Garganega",
  "Grenache blanc",
  "Bourgogne blanc",
  "Lambrusco",
  "Merlot",
  "Muscat",
  "Negro Amaro",
  "Pinot gris",
  "Primitivo",
  "Sangiovese",
  "Sémillon",
  "Trebbiano",
  "Vermentino"
]

WineType.destroy_all
WINE_TYPES.each do |type|
  WineType.create!( :title => type )
end

Wine.destroy_all

Wine.create!(
  :name               => "Château Meyney Saint-Estèphe Cru bourgeois",
  :appellation        => "Saint-Estèphe",
  :vintage            => 2006,
  :country            => "France",
  :winery             => "Château Meyney",
  :color              => "Rouge",
  :years_to_maturity  => 14,
  :quantity           => 6,
  :rating             => nil,
  :acquired_on        => 1.year.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Gamay').id,
  :code_saq           => '10842658'
)

Wine.create!(
  :name               => "Château Mont-Redon Lirac",
  :appellation        => "Lirac",
  :vintage            => 2007,
  :country            => "France",
  :winery             => "Château Mont-Redon",
  :color              => "Rouge",
  :years_to_maturity  => 7,
  :quantity           => 24,
  :rating             => nil,
  :acquired_on        => 10.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Grenache').id,
  :code_saq           => '11293970'
)

Wine.create!(
  :name               => "Bourgogne Hautes Côtes de Beaune Clos de la Perrière",
  :appellation        => "Bourgogne Htes Côtes de Beaune",
  :vintage            => 2008,
  :country            => "France",
  :winery             => "Domaine Sébastien Magnien",
  :color              => "Rouge",
  :years_to_maturity  => 4,
  :quantity           => 12,
  :rating             => nil,
  :acquired_on        => 8.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Pinot noir').id,
  :code_saq           => '11294041'
)

Wine.create!(
  :name               => "Pommard premier cru Les Grands Epenots Champy",
  :appellation        => "Pommard",
  :vintage            => 2007,
  :country            => "France",
  :winery             => "Maison Champy",
  :color              => "Rouge",
  :years_to_maturity  => 11,
  :quantity           => 12,
  :rating             => nil,
  :acquired_on        => 6.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Pinot noir').id,
  :code_saq           => '11293700'
)

Wine.create!(
  :name               => "Domaine Les Pallières Les Racines Gigondas",
  :appellation        => "Gigondas",
  :vintage            => 2007,
  :country            => "France",
  :winery             => "Domaine Les Pallières",
  :color              => "Rouge",
  :years_to_maturity  => 10,
  :quantity           => 24,
  :rating             => nil,
  :acquired_on        => 6.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Blend').id,
  :code_saq           => '11288409'
)

Wine.create!(
  :name               => "Mirabelle du Château de la Jaubertie Bergerac sec ",
  :appellation        => "Bergerac",
  :vintage            => 2007,
  :country            => "France",
  :winery             => "Ryman",
  :color              => "Rouge",
  :years_to_maturity  => 11,
  :quantity           => 12,
  :rating             => nil,
  :acquired_on        => 5.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Grignolino').id,
  :code_saq           => '11305627'
)

Wine.create!(
  :name               => "Bourgogne Pinot noir vieilles vignes François Labet",
  :appellation        => "Bourgogne",
  :vintage            => 2007,
  :country            => "France",
  :winery             => "Pierre Labet",
  :color              => "Rouge",
  :years_to_maturity  => 6,
  :quantity           => 6,
  :rating             => nil,
  :acquired_on        => 3.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Pinot noir').id,
  :code_saq           => '11195481'
)

Wine.create!(
  :name               => "Bourgogne Chardonnay Ropiteau",
  :appellation        => "Bourgogne",
  :vintage            => 2008,
  :country            => "France",
  :winery             => "Ropiteau Frères",
  :color              => "Blanc",
  :years_to_maturity  => 5,
  :quantity           => 12,
  :rating             => nil,
  :acquired_on        => 2.months.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Chardonnay').id,
  :code_saq           => '11293953'
)

Wine.create!(
  :name               => "Bourgogne Chardonnay Signature Champy",
  :appellation        => "Bourgogne",
  :vintage            => 2008,
  :country            => "France",
  :winery             => "Maison Champy",
  :color              => "Blanc",
  :years_to_maturity  => 6,
  :quantity           => 36,
  :rating             => nil,
  :acquired_on        => 1.month.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Chardonnay').id,
  :code_saq           => '11293742'
)

Wine.create!(
  :name               => "Bourgogne Chardonnay vieilles vignes François Labet",
  :appellation        => "Bourgogne",
  :vintage            => 2007,
  :country            => "France",
  :winery             => "Pierre Labet",
  :color              => "Blanc",
  :years_to_maturity  => 8,
  :quantity           => 36,
  :rating             => nil,
  :acquired_on        => 1.month.ago,
  :notes              => nil,
  :wine_type_id       => WineType.find_by_title('Chardonnay').id,
  :code_saq           => '11195528'
)