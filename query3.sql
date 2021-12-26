SELECT DISTINCT beerName
FROM brewery_brews_beer JOIN beer ON BEER_beerID = beer.beerID
WHERE fermentationTechnique = 'warm';