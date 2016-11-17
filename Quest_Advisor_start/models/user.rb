require_relative("../db/sql_runner")

class User

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO users (name) VALUES ('#{ @name }') RETURNING id"
    user = SqlRunner.run( sql ).first
    @id = user['id'].to_i
  end

  def locations()
    sql = "
    SELECT l.* FROM locations l
    INNER JOIN visits v
    ON l.id = v.location_id
    WHERE v.user_id = #{@id};
    "
    locations = Location.get_many(sql)
    return locations
  end

  def self.get_many(sql)
    users = SqlRunner.run(sql)
    result = users.map { |hash| User.new( hash ) }
    return result
  end

  def self.all()
    sql = "SELECT * FROM users"
    users = SqlRunner.run(sql)
    result = users.map { |user| User.new( user ) }
    return result
  end

  def self.delete_all() 
    sql = "DELETE FROM users"
    SqlRunner.run(sql)
  end

end