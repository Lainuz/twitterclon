class Twitt < ApplicationRecord
    include PgSearch::Model
        pg_search_scope :search_full_text,
        against: {
            username: 'A',
            description: 'B'
                },
        using: {
        tsearch: { prefix: true } # Activa búsquedas parciales
                }

end
