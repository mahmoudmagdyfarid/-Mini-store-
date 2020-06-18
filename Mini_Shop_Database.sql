CREATE TABLE `customer` (
  `customer_id` int,
  `firstname` varchar(30),
  `lastname` varchar(30),
  `street` varchar(80),
  `city` varchar(30),
  `phone` varchar(11),
  KEY `pk` (`customer_id`),
  KEY `Key` (`firstname`, `lastname`, `street`, `city`, `phone`)
);

CREATE TABLE `order` (
  `order_name` varchar(30),
  `customer_id` int,
  `customer_name` varchar(30),
  `to_city` varchar(30),
  `to_street` varchar(30),
  `product_id` int,
  KEY `pk` (`order_name`),
  KEY `fk` (`customer_id`, `product_id`),
  KEY `Key` (`customer_name`, `to_city`, `to_street`)
);

CREATE TABLE `product` (
  `product_id` int,
  `quantity` int,
  `product_name` varchar(30),
  `product_type` varchar(30),
  KEY `pk` (`product_id`),
  KEY `Key` (`quantity`, `product_name`, `product_type`)
);