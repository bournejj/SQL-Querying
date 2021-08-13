Count the number of apps in each category, e.g. “Family | 1972”


 - SELECT category, COUNT(*) FROM analytics GROUP BY category;

	1.	Find the top 5 most-reviewed apps and the number of reviews for each.


 - SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

	1.	Find the app that has the most reviews with a rating greater than equal to 4.8.


	1.	Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.

SELECT app_name FROM analytics WHERE min_installs < 50 AND rating  >= 1 ORDER BY rating;


	1.	Find the names of all apps that are rated less than 3 with at least 10000 reviews.

 - SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 1000;

	1.	Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.

 - SELECT * FROM analytics WHERE price BETWEEN 0.10 AND 1 ORDER BY reviews desc LIMIT 10;

Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery:

 - SELECT * FROM analytics WHERE last_updated = (SELECT MIN (last_updated) FROM analytics) ORDER BY last_updated LIMIT 1;

	1.	Find the most expensive app (the query is very similar to #11).



SELECT * FROM analytics WHERE price = (SELECT MAX (price) FROM analytics) ORDER BY price LIMIT 1;

	1.	Count all the reviews in the Google Play Store.


 - SELECT SUM(reviews) FROM analytics;

Find all the categories that have more than 300 apps in them

SELECT category FROM analytics GROUP BY category HAVING COUNT (*) > 300;-- Comments in SQL Start with dash-dash --
