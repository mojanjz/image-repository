class Post < ApplicationRecord
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    has_one_attached :photo

    # ElasticSearch Index
    settings index: { number_of_shards: 1 } do
        mappings dynamic: 'false' do
            indexes :title, analyzer: 'english'
            indexes :body, analyzer: 'english'
        end
    end
end
