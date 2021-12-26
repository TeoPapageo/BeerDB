SELECT beerName, beerPrice, shopName
FROM shop STRAIGHT_JOIN shop_sells_beer ON shop.shopID = shop_sells_beer.SHOP_shopID STRAIGHT_JOIN beer ON beer.beerID = shop_sells_beer.BEER_beerID
WHERE (shop.city = 'Thessaloniki' AND beerPrice < 5);