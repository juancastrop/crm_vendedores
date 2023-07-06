class Vendedor < ApplicationRecord
    #vendedor -> representacion de la tabla vendedors en rails
    include PgSearch::Model
    pg_search_scope :search_full_text,
        against: {
        nombre: 'A',
        email: 'B',
        number: 'c',
        }
end
