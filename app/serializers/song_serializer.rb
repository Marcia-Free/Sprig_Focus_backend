class SongSerializer < ActiveModel::Serializer
  attributes :id, :song_name, :url, :user_id
end
