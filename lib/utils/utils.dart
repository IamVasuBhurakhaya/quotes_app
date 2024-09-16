import 'package:quotes_app/models/quote_model.dart';

List<Map> allQuoteData = [
  {
    'quote':
        'The only limit to our realization of tomorrow is our doubts of today.',
    'author': 'Franklin D. Roosevelt',
    'quotes_like': 124,
    'quotes_share': 89,
    'category': 'Inspiration',
    'popularity': 'Medium'
  },
  {
    'quote':
        'In the end, we will remember not the words of our enemies, but the silence of our friends.',
    'author': 'Martin Luther King Jr.',
    'quotes_like': 98,
    'quotes_share': 72,
    'category': 'Wisdom',
    'popularity': 'Low'
  },
  {
    'quote': 'The purpose of our lives is to be happy.',
    'author': 'Dalai Lama',
    'quotes_like': 211,
    'quotes_share': 132,
    'category': 'Happiness',
    'popularity': 'High'
  },
  {
    'quote': 'Life is what happens when you’re busy making other plans.',
    'author': 'John Lennon',
    'quotes_like': 184,
    'quotes_share': 103,
    'category': 'Life',
    'popularity': 'High'
  },
  {
    'quote': 'Get busy living or get busy dying.',
    'author': 'Stephen King',
    'quotes_like': 159,
    'quotes_share': 95,
    'category': 'Motivation',
    'popularity': 'Medium'
  },
  {
    'quote':
        'You have within you right now, everything you need to deal with whatever the world can throw at you.',
    'author': 'Brian Tracy',
    'quotes_like': 135,
    'quotes_share': 88,
    'category': 'Self-help',
    'popularity': 'Low'
  },
  {
    'quote':
        'Do not wait to strike till the iron is hot, but make it hot by striking.',
    'author': 'William Butler Yeats',
    'quotes_like': 142,
    'quotes_share': 104,
    'category': 'Action',
    'popularity': 'Medium'
  },
  {
    'quote':
        'To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.',
    'author': 'Ralph Waldo Emerson',
    'quotes_like': 178,
    'quotes_share': 120,
    'category': 'Identity',
    'popularity': 'High'
  },
  {
    'quote': 'You only live once, but if you do it right, once is enough.',
    'author': 'Mae West',
    'quotes_like': 201,
    'quotes_share': 140,
    'category': 'Life',
    'popularity': 'High'
  },
  {
    'quote': 'The only way to do great work is to love what you do.',
    'author': 'Steve Jobs',
    'quotes_like': 220,
    'quotes_share': 160,
    'category': 'Success',
    'popularity': 'High'
  },
  {
    'quote': 'Be yourself; everyone else is already taken.',
    'author': 'Oscar Wilde',
    'quotes_like': 189,
    'quotes_share': 110,
    'category': 'Individuality',
    'popularity': 'High'
  },
  {
    'quote':
        'Two things are infinite: the universe and human stupidity; and I’m not sure about the universe.',
    'author': 'Albert Einstein',
    'quotes_like': 160,
    'quotes_share': 118,
    'category': 'Humor',
    'popularity': 'Low'
  },
  {
    'quote':
        'Do not go gentle into that good night. Rage, rage against the dying of the light.',
    'author': 'Dylan Thomas',
    'quotes_like': 140,
    'quotes_share': 90,
    'category': 'Resistance',
    'popularity': 'Medium'
  },
  {
    'quote': 'I think, therefore I am.',
    'author': 'René Descartes',
    'quotes_like': 176,
    'quotes_share': 130,
    'category': 'Philosophy',
    'popularity': 'High'
  },
  {
    'quote': 'You miss 100% of the shots you don’t take.',
    'author': 'Wayne Gretzky',
    'quotes_like': 189,
    'quotes_share': 142,
    'category': 'Sports',
    'popularity': 'Low'
  },
  {
    'quote': 'The journey of a thousand miles begins with one step.',
    'author': 'Lao Tzu',
    'quotes_like': 157,
    'quotes_share': 99,
    'category': 'Journey',
    'popularity': 'Medium'
  },
  {
    'quote': 'You must be the change you wish to see in the world.',
    'author': 'Mahatma Gandhi',
    'quotes_like': 201,
    'quotes_share': 155,
    'category': 'Change',
    'popularity': 'High'
  },
  {
    'quote':
        'We are what we repeatedly do. Excellence, then, is not an act, but a habit.',
    'author': 'Aristotle',
    'quotes_like': 137,
    'quotes_share': 101,
    'category': 'Excellence',
    'popularity': 'Medium'
  },
  {
    'quote':
        'To live is the rarest thing in the world. Most people exist, that is all.',
    'author': 'Oscar Wilde',
    'quotes_like': 166,
    'quotes_share': 123,
    'category': 'Life',
    'popularity': 'Low'
  },
  {
    'quote': 'The best way to predict the future is to invent it.',
    'author': 'Alan Kay',
    'quotes_like': 147,
    'quotes_share': 98,
    'category': 'Innovation',
    'popularity': 'Medium'
  },
  {
    'quote':
        'In three words I can sum up everything I’ve learned about life: it goes on.',
    'author': 'Robert Frost',
    'quotes_like': 125,
    'quotes_share': 85,
    'category': 'Life',
    'popularity': 'Medium'
  },
  {
    'quote':
        'Happiness is not something ready made. It comes from your own actions.',
    'author': 'Dalai Lama',
    'quotes_like': 170,
    'quotes_share': 130,
    'category': 'Happiness',
    'popularity': 'High'
  },
  {
    'quote': 'Life is really simple, but we insist on making it complicated.',
    'author': 'Confucius',
    'quotes_like': 143,
    'quotes_share': 90,
    'category': 'Simplicity',
    'popularity': 'Medium'
  },
  {
    'quote':
        'The greatest glory in living lies not in never falling, but in rising every time we fall.',
    'author': 'Nelson Mandela',
    'quotes_like': 182,
    'quotes_share': 140,
    'category': 'Perseverance',
    'popularity': 'High'
  },
  {
    'quote': 'To love and be loved is to feel the sun from both sides.',
    'author': 'David Viscott',
    'quotes_like': 134,
    'quotes_share': 76,
    'category': 'Love',
    'popularity': 'Low'
  },
  {
    'quote': 'We can’t help everyone, but everyone can help someone.',
    'author': 'Ronald Reagan',
    'quotes_like': 146,
    'quotes_share': 102,
    'category': 'Help',
    'popularity': 'Medium'
  },
  {
    'quote': 'The only impossible journey is the one you never begin.',
    'author': 'Tony Robbins',
    'quotes_like': 169,
    'quotes_share': 115,
    'category': 'Motivation',
    'popularity': 'Medium'
  },
  {
    'quote':
        'To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.',
    'author': 'Ralph Waldo Emerson',
    'quotes_like': 183,
    'quotes_share': 137,
    'category': 'Identity',
    'popularity': 'High'
  },
  {
    'quote': 'Believe you can and you’re halfway there.',
    'author': 'Theodore Roosevelt',
    'quotes_like': 196,
    'quotes_share': 145,
    'category': 'Belief',
    'popularity': 'Medium'
  },
  {
    'quote': 'The mind is everything. What you think you become.',
    'author': 'Buddha',
    'quotes_like': 165,
    'quotes_share': 123,
    'category': 'Mindset',
    'popularity': 'Low',
  },
  {
    'quote': 'In the middle of every difficulty lies opportunity.',
    'author': 'Albert Einstein',
    'quotes_like': 190,
    'quotes_share': 140,
    'category': 'Opportunity',
    'popularity': 'High'
  },
  {
    'quote': 'Life is either a daring adventure or nothing at all.',
    'author': 'Helen Keller',
    'quotes_like': 142,
    'quotes_share': 98,
    'category': 'Adventure',
    'popularity': 'Medium'
  },
  {
    'quote':
        'The only way to achieve the impossible is to believe it is possible.',
    'author': 'Charles Kingsleigh',
    'quotes_like': 167,
    'quotes_share': 115,
    'category': 'Belief',
    'popularity': 'High'
  },
  {
    'quote': 'Act as if what you do makes a difference. It does.',
    'author': 'William James',
    'quotes_like': 154,
    'quotes_share': 105,
    'category': 'Impact',
    'popularity': 'Medium'
  },
  {
    'quote':
        'The best time to plant a tree was 20 years ago. The second-best time is now.',
    'author': 'Chinese Proverb',
    'quotes_like': 165,
    'quotes_share': 110,
    'category': 'Action',
    'popularity': 'High'
  },
  {
    'quote':
        'Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.',
    'author': 'Christian D. Larson',
    'quotes_like': 179,
    'quotes_share': 123,
    'category': 'Self-belief',
    'popularity': 'Low'
  },
  {
    'quote': 'Everything you’ve ever wanted is on the other side of fear.',
    'author': 'George Addair',
    'quotes_like': 160,
    'quotes_share': 95,
    'category': 'Fear',
    'popularity': 'Medium'
  },
  {
    'quote':
        'The harder you work for something, the greater you’ll feel when you achieve it.',
    'author': 'Unknown',
    'quotes_like': 185,
    'quotes_share': 130,
    'category': 'Achievement',
    'popularity': 'High'
  },
  {
    'quote':
        'Do not follow where the path may lead. Go instead where there is no path and leave a trail.',
    'author': 'Ralph Waldo Emerson',
    'quotes_like': 145,
    'quotes_share': 105,
    'category': 'Leadership',
    'popularity': 'Medium'
  },
  {
    'quote':
        'Success usually comes to those who are too busy to be looking for it.',
    'author': 'Henry David Thoreau',
    'quotes_like': 172,
    'quotes_share': 112,
    'category': 'Success',
    'popularity': 'Low'
  },
  {
    'quote':
        'Your life does not get better by chance, it gets better by change.',
    'author': 'Jim Rohn',
    'quotes_like': 157,
    'quotes_share': 120,
    'category': 'Change',
    'popularity': 'High'
  },
  {
    'quote': 'It does not matter how slowly you go as long as you do not stop.',
    'author': 'Confucius',
    'quotes_like': 143,
    'quotes_share': 95,
    'category': 'Persistence',
    'popularity': 'Medium'
  },
  {
    'quote':
        'The best way to find yourself is to lose yourself in the service of others.',
    'author': 'Mahatma Gandhi',
    'quotes_like': 148,
    'quotes_share': 104,
    'category': 'Service',
    'popularity': 'Medium'
  },
  {
    'quote': 'Success is not in what you have, but who you are.',
    'author': 'Bo Bennett',
    'quotes_like': 165,
    'quotes_share': 100,
    'category': 'Success',
    'popularity': 'Low'
  },
  {
    'quote': 'What we think, we become.',
    'author': 'Buddha',
    'quotes_like': 155,
    'quotes_share': 110,
    'category': 'Mindset',
    'popularity': 'Medium'
  },
  {
    'quote': 'If you can dream it, you can achieve it.',
    'author': 'Walt Disney',
    'quotes_like': 174,
    'quotes_share': 130,
    'category': 'Dream',
    'popularity': 'High'
  },
  {
    'quote':
        'Success is not measured by what you accomplish, but the opposition you have encountered, and the courage with which you have maintained the struggle against overwhelming odds.',
    'author': 'Orison Swett Marden',
    'quotes_like': 148,
    'quotes_share': 115,
    'category': 'Success',
    'popularity': 'Medium'
  },
  {
    'quote':
        'The only limit to our realization of tomorrow is our doubts of today.',
    'author': 'Franklin D. Roosevelt',
    'quotes_like': 123,
    'quotes_share': 87,
    'category': 'Inspiration',
    'popularity': 'Low'
  },
  {
    'quote':
        'You are never too old to set another goal or to dream a new dream.',
    'author': 'C.S. Lewis',
    'quotes_like': 190,
    'quotes_share': 140,
    'category': 'Dream',
    'popularity': 'High'
  },
  {
    'quote':
        'The future belongs to those who believe in the beauty of their dreams.',
    'author': 'Eleanor Roosevelt',
    'quotes_like': 175,
    'quotes_share': 125,
    'category': 'Future',
    'popularity': 'Low'
  },
  {
    'quote': 'The journey of a thousand miles begins with one step.',
    'author': 'Lao Tzu',
    'quotes_like': 158,
    'quotes_share': 103,
    'category': 'Journey',
    'popularity': 'Medium'
  }
];
List<QuoteModel> allQuotes = allQuoteData
    .map(
      (e) => QuoteModel.fromMap(
        data: e,
      ),
    )
    .toList();
