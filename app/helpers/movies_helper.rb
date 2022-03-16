module MoviesHelper
  def release_date(movie)
    movie.released_on.strftime('%Y %B %d')
  end

  def total_gross(movie)
    if movie.flop?
      'Flop!'
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end
end
