# Read Me: Predicting Yelp Rating based on Review Components

## What we did: analyze components of yelp reviews to see how well they predict the establishments' reviewer score.

## Dataset used: Yelp Reviewer Dataset
Ccompiles information on 11 metropolitan areas: Edinburgh (UK), Stuttgart (Germany), Montreal (Canada), Toronto (Canada), Pittsburgh, Charlotte, Champaign-Urbana, Phoenix, Las Vegas, Madison, and Cleveland.

We matched the review dataset with Yelp

Number of reviews analyzed: roughly 6 million

## Sentiment Library used: syuzhet
Loaded in R with sentiment scores averaged by the business.

### Might be fun to note: "'Syuzhet' is a term originating in Russian formalism and narratology that describes the employment of narrative in a story."

## Primary Sentiment: Emotions
Saif Mohammad’s NRC Emotion lexicon. According to Mohammad, “the NRC emotion lexicon is a list of words and their associations with eight emotions (anger, fear, anticipation, trust, surprise, sadness, joy, and disgust) and two sentiments (negative and positive).

## Alternate Sentiment: Compound Polarity Score
### IMPORTANT: This should be considered an alternate to the positive+negative score in the emotions
This alternate method produced a compound polarity score.  

## Extra Variables: 
Yelp allows readers of reviews to tag reviews with 3 attributes: "cool", "useful", and "funny"
These were included to gain additional context as to how the reviews were interpreted.
