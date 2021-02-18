INSERT INTO users
  (username, password, phone_number, type)
VALUES
  ('James', '123', '1111111111', 'o'),
  ('Mary', '456', '2222222222', 'o'),
  ('Bob', '789', '3333333333', 'o'),
  ('Jack', '987', '4444444444', 'o'),
  ('Sydney', '654', '5555555555', 'o'),
  ('Sam', '321', '6666666666', 'o'),
  ('Ash', '246', '7777777777', 'c'),
  ('Kirk', '135', '8888888888', 'c');

INSERT INTO stores
  (name, latitude, longitude, image, address, description, user_id)
VALUES
  ('BREKA', 49.285764, -123.127274, 'https://images.unsplash.com/photo-1493857671505-72967e2e2760?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '818 Bute Street, Vancouver, BC V6E 1B0, Canada', 'Our service is attentive, warm and unpretentious. Our people are passionate about delivering drink and experiences that will keep our guests coming back again and again.', 1),
  ('PappaRoti', 49.28897831975059, -123.13114582827282, 'https://images.unsplash.com/photo-1463797221720-6b07e6426c24?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80', '787 Nicola Street, Vancouver, BC, Canada', 'We have a variety of high-quality single origin and fairtrade coffee beans. Roasted to order in small batches to guarantee freshness. Ships all around the world.', 2),
  ('Berry Good', 49.183342923748526, -123.12560035997672, 'https://images.unsplash.com/photo-1494346480775-936a9f0d0877?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1303&q=80', '8766 McKim Way, Richmond, BC V6X 3Z8, Canada', 'Here you’ll get to drink some of the most authentic coffee in Richmond. We use only the best roasts, mostly from around North America.', 3),
  ('Tiger Sugar', 49.170551459330326, -123.13260825862473, 'https://images.unsplash.com/photo-1533630757306-cbadb934bcb1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '8271 Westminster Highway, Richmond, BC V6X 3K5, Canada', 'We’re dedicated to sourcing, hand roasting and blending each of our espressos, containing up to 13 different origin coffees. We put the same due diligence and passion into our pourover, drip and French press coffee blends.', 4),
  ('Cafe Delta', 49.14700552985569, -122.89117268206913, 'https://images.unsplash.com/photo-1464979681340-bdd28a61699e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '7907 Scott Road, Delta, BC V3W 3N2, Canada', 'At our microroastery, we specialize in roasting highly traceable specialty grade coffees, sourced with integrity by importers who pay what the coffee is really worth.', 5),
  ('IHOP', 49.15199892579976, -122.88989825243101, 'https://images.unsplash.com/photo-1525610553991-2bede1a236e2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', '82 Avenue, Surrey, BC V4C 6R1, Canada', 'We are committed to sourcing unique coffees from quality farms around different origins. Our coffee offerings rotate with the seasonality of the harvest at source and we strive to have exciting options throughout the year.', 6);

INSERT INTO menu_items
  (name, price, image, category, description, store_id)
VALUES
  ('Con Panna', 4.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Con_Panna.jpg?h=fbf7a813&itok=mGiPBRoS', 'Espresso Bar', 'A true indulgence: espresso topped with a generous dollop of real whipped cream', 1),
  ('Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Moccaccino_0.jpg?h=fbf7a813&itok=p7n3eafi', 'Espresso Bar', 'An aromatic and robust blend, featuring the deep rich flavours of chocolate and espresso. Served with whipped cream', 1),
  ('Espresso Macchiato', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Espresso_Macchiato.jpg?h=fbf7a813&itok=PSaug2AA', 'Espresso Bar', 'A signature beverage, featuring espresso with milk and topped with a dollop of foam', 1),
  ('Cappuccino', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Cappuccino_0.jpg?h=fbf7a813&itok=3tf5sHGA', 'Espresso Bar', 'A soothing sip, combining equal portions of espresso, steamed milk, and foam for an ideal tasting experience', 1),
  ('Chai Latte', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Latte.jpg?h=fbf7a813&itok=CDr2y4ax', 'Brew Bar', 'A boldly aromatic tea latte with high cinnamon and cardamom notes combined with Indonesian black tea from the Bandung region', 1),
  ('London Fog', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/London_Fog.jpg?h=fbf7a813&itok=5IDL8nY7', 'Brew Bar', 'The perfect marriage of black tea, oil of bergamot, mandarin flavor and vanilla. Soothing and comforting, lightly floral and warm', 1),
  ('Maple Tea Latte', 4.10, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/MapleTeaLatte.jpg?h=fbf7a813&itok=UTPTV8gg', 'Brew Bar', 'Cozy in a cup. Full flavoured English Breakfast tea is perfectly paired with steamed milk and maple. No artificial flavours, colours or preservatives', 1),
  ('Brewed Coffee', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Coffee.jpg?h=fbf7a813&itok=7p94bCMh', 'Brew Bar', 'We care where our coffee comes from. That’s why all our beans are Fairly Traded, and 99% are Rainforest Alliance Certified', 1),
  ('Iced Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Iced_Moccaccino.jpg?h=fbf7a813&itok=dOZTYVP4', 'Over Ice', 'A sensational sip, with the deep rich flavours of chocolate and espresso poured over ice. Served with whipped cream', 1),
  ('Italian Soda', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Italian_Soda.jpg?h=fbf7a813&itok=fdc8ks4x', 'Over Ice', 'A refreshing and revitalizing combination of soda water and your choice of flavour, enjoyed best on hot summer afternoons', 1),
  ('Flash Cold Brew', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Flash_ColdBrew.jpg?h=fbf7a813&itok=CxGMkjoa', 'Over Ice', 'Our signature Flash Cold Brew Coffee is freshly brewed directly over ice, locking in the aromatics and delivering a smoother taste than traditional Iced Coffee. Available sweetened or unsweetened. Served over ice', 1),
  ('Brewed Iced Tea', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Iced_Tea.jpg?h=fbf7a813&itok=sHdX69jQ', 'Over Ice', 'Our premium English Breakfast Tea, perfectly steeped, chilled, and poured over ice. Available sweetened or unsweetend', 1),
  ('Almond Date', 3.20, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/AlmondDateSmoothie_0.jpg?h=4950497c&itok=5KI8fpvk', 'Blended', 'The Almond Date Smoothie with Flax delivers a delicious creamy, nutty profile and is sweetened with nature’s candy – dates. Made with 1 whole banana. Gluten Friendly. Dairy Free. Vegan', 1),
  ('Caramel Frappe', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Caramel_Frappe_0.jpg?h=fbf7a813&itok=J15xUkWu', 'Blended', 'Sweet and creamy caramel paired with espresso', 1),
  ('Chai Frappe', 3.30, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Frappe_0.jpg?h=fbf7a813&itok=lnq2Zwgm', 'Blended', 'A delicately sweet and creamy blend of spiced chai and milk blended with ice', 1),
  ('Green Mongo Boost', 3.80, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/GreenMangoSmoothie_0.jpg?h=c5883cbc&itok=d5yTws8d', 'Blended', 'A nourishing on-the-go snack - made with mango puree, pure kale and spinach powder, whey protein and 1 whole banana. Gluten Friendly', 1),
  ('Con Panna', 4.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Con_Panna.jpg?h=fbf7a813&itok=mGiPBRoS', 'Espresso Bar', 'A true indulgence: espresso topped with a generous dollop of real whipped cream', 2),
  ('Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Moccaccino_0.jpg?h=fbf7a813&itok=p7n3eafi', 'Espresso Bar', 'An aromatic and robust blend, featuring the deep rich flavours of chocolate and espresso. Served with whipped cream', 2),
  ('Espresso Macchiato', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Espresso_Macchiato.jpg?h=fbf7a813&itok=PSaug2AA', 'Espresso Bar', 'A signature beverage, featuring espresso with milk and topped with a dollop of foam', 2),
  ('Cappuccino', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Cappuccino_0.jpg?h=fbf7a813&itok=3tf5sHGA', 'Espresso Bar', 'A soothing sip, combining equal portions of espresso, steamed milk, and foam for an ideal tasting experience', 2),
  ('Chai Latte', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Latte.jpg?h=fbf7a813&itok=CDr2y4ax', 'Brew Bar', 'A boldly aromatic tea latte with high cinnamon and cardamom notes combined with Indonesian black tea from the Bandung region', 2),
  ('London Fog', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/London_Fog.jpg?h=fbf7a813&itok=5IDL8nY7', 'Brew Bar', 'The perfect marriage of black tea, oil of bergamot, mandarin flavor and vanilla. Soothing and comforting, lightly floral and warm', 2),
  ('Maple Tea Latte', 4.10, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/MapleTeaLatte.jpg?h=fbf7a813&itok=UTPTV8gg', 'Brew Bar', 'Cozy in a cup. Full flavoured English Breakfast tea is perfectly paired with steamed milk and maple. No artificial flavours, colours or preservatives', 2),
  ('Brewed Coffee', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Coffee.jpg?h=fbf7a813&itok=7p94bCMh', 'Brew Bar', 'We care where our coffee comes from. That’s why all our beans are Fairly Traded, and 99% are Rainforest Alliance Certified', 2),
  ('Iced Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Iced_Moccaccino.jpg?h=fbf7a813&itok=dOZTYVP4', 'Over Ice', 'A sensational sip, with the deep rich flavours of chocolate and espresso poured over ice. Served with whipped cream', 2),
  ('Italian Soda', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Italian_Soda.jpg?h=fbf7a813&itok=fdc8ks4x', 'Over Ice', 'A refreshing and revitalizing combination of soda water and your choice of flavour, enjoyed best on hot summer afternoons', 2),
  ('Flash Cold Brew', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Flash_ColdBrew.jpg?h=fbf7a813&itok=CxGMkjoa', 'Over Ice', 'Our signature Flash Cold Brew Coffee is freshly brewed directly over ice, locking in the aromatics and delivering a smoother taste than traditional Iced Coffee. Available sweetened or unsweetened. Served over ice', 2),
  ('Brewed Iced Tea', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Iced_Tea.jpg?h=fbf7a813&itok=sHdX69jQ', 'Over Ice', 'Our premium English Breakfast Tea, perfectly steeped, chilled, and poured over ice. Available sweetened or unsweetend', 2),
  ('Almond Date', 3.20, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/AlmondDateSmoothie_0.jpg?h=4950497c&itok=5KI8fpvk', 'Blended', 'The Almond Date Smoothie with Flax delivers a delicious creamy, nutty profile and is sweetened with nature’s candy – dates. Made with 1 whole banana. Gluten Friendly. Dairy Free. Vegan', 2),
  ('Caramel Frappe', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Caramel_Frappe_0.jpg?h=fbf7a813&itok=J15xUkWu', 'Blended', 'Sweet and creamy caramel paired with espresso', 2),
  ('Chai Frappe', 3.30, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Frappe_0.jpg?h=fbf7a813&itok=lnq2Zwgm', 'Blended', 'A delicately sweet and creamy blend of spiced chai and milk blended with ice', 2),
  ('Green Mongo Boost', 3.80, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/GreenMangoSmoothie_0.jpg?h=c5883cbc&itok=d5yTws8d', 'Blended', 'A nourishing on-the-go snack - made with mango puree, pure kale and spinach powder, whey protein and 1 whole banana. Gluten Friendly', 2),
  ('Con Panna', 4.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Con_Panna.jpg?h=fbf7a813&itok=mGiPBRoS', 'Espresso Bar', 'A true indulgence: espresso topped with a generous dollop of real whipped cream', 3),
  ('Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Moccaccino_0.jpg?h=fbf7a813&itok=p7n3eafi', 'Espresso Bar', 'An aromatic and robust blend, featuring the deep rich flavours of chocolate and espresso. Served with whipped cream', 3),
  ('Espresso Macchiato', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Espresso_Macchiato.jpg?h=fbf7a813&itok=PSaug2AA', 'Espresso Bar', 'A signature beverage, featuring espresso with milk and topped with a dollop of foam', 3),
  ('Cappuccino', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Cappuccino_0.jpg?h=fbf7a813&itok=3tf5sHGA', 'Espresso Bar', 'A soothing sip, combining equal portions of espresso, steamed milk, and foam for an ideal tasting experience', 3),
  ('Chai Latte', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Latte.jpg?h=fbf7a813&itok=CDr2y4ax', 'Brew Bar', 'A boldly aromatic tea latte with high cinnamon and cardamom notes combined with Indonesian black tea from the Bandung region', 3),
  ('London Fog', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/London_Fog.jpg?h=fbf7a813&itok=5IDL8nY7', 'Brew Bar', 'The perfect marriage of black tea, oil of bergamot, mandarin flavor and vanilla. Soothing and comforting, lightly floral and warm', 3),
  ('Maple Tea Latte', 4.10, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/MapleTeaLatte.jpg?h=fbf7a813&itok=UTPTV8gg', 'Brew Bar', 'Cozy in a cup. Full flavoured English Breakfast tea is perfectly paired with steamed milk and maple. No artificial flavours, colours or preservatives', 3),
  ('Brewed Coffee', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Coffee.jpg?h=fbf7a813&itok=7p94bCMh', 'Brew Bar', 'We care where our coffee comes from. That’s why all our beans are Fairly Traded, and 99% are Rainforest Alliance Certified', 3),
  ('Iced Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Iced_Moccaccino.jpg?h=fbf7a813&itok=dOZTYVP4', 'Over Ice', 'A sensational sip, with the deep rich flavours of chocolate and espresso poured over ice. Served with whipped cream', 3),
  ('Italian Soda', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Italian_Soda.jpg?h=fbf7a813&itok=fdc8ks4x', 'Over Ice', 'A refreshing and revitalizing combination of soda water and your choice of flavour, enjoyed best on hot summer afternoons', 3),
  ('Flash Cold Brew', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Flash_ColdBrew.jpg?h=fbf7a813&itok=CxGMkjoa', 'Over Ice', 'Our signature Flash Cold Brew Coffee is freshly brewed directly over ice, locking in the aromatics and delivering a smoother taste than traditional Iced Coffee. Available sweetened or unsweetened. Served over ice', 3),
  ('Brewed Iced Tea', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Iced_Tea.jpg?h=fbf7a813&itok=sHdX69jQ', 'Over Ice', 'Our premium English Breakfast Tea, perfectly steeped, chilled, and poured over ice. Available sweetened or unsweetend', 3),
  ('Almond Date', 3.20, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/AlmondDateSmoothie_0.jpg?h=4950497c&itok=5KI8fpvk', 'Blended', 'The Almond Date Smoothie with Flax delivers a delicious creamy, nutty profile and is sweetened with nature’s candy – dates. Made with 1 whole banana. Gluten Friendly. Dairy Free. Vegan', 3),
  ('Caramel Frappe', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Caramel_Frappe_0.jpg?h=fbf7a813&itok=J15xUkWu', 'Blended', 'Sweet and creamy caramel paired with espresso', 3),
  ('Chai Frappe', 3.30, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Frappe_0.jpg?h=fbf7a813&itok=lnq2Zwgm', 'Blended', 'A delicately sweet and creamy blend of spiced chai and milk blended with ice', 3),
  ('Green Mongo Boost', 3.80, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/GreenMangoSmoothie_0.jpg?h=c5883cbc&itok=d5yTws8d', 'Blended', 'A nourishing on-the-go snack - made with mango puree, pure kale and spinach powder, whey protein and 1 whole banana. Gluten Friendly', 3),
  ('Con Panna', 4.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Con_Panna.jpg?h=fbf7a813&itok=mGiPBRoS', 'Espresso Bar', 'A true indulgence: espresso topped with a generous dollop of real whipped cream', 4),
  ('Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Moccaccino_0.jpg?h=fbf7a813&itok=p7n3eafi', 'Espresso Bar', 'An aromatic and robust blend, featuring the deep rich flavours of chocolate and espresso. Served with whipped cream', 4),
  ('Espresso Macchiato', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Espresso_Macchiato.jpg?h=fbf7a813&itok=PSaug2AA', 'Espresso Bar', 'A signature beverage, featuring espresso with milk and topped with a dollop of foam', 4),
  ('Cappuccino', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Cappuccino_0.jpg?h=fbf7a813&itok=3tf5sHGA', 'Espresso Bar', 'A soothing sip, combining equal portions of espresso, steamed milk, and foam for an ideal tasting experience', 4),
  ('Chai Latte', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Latte.jpg?h=fbf7a813&itok=CDr2y4ax', 'Brew Bar', 'A boldly aromatic tea latte with high cinnamon and cardamom notes combined with Indonesian black tea from the Bandung region', 4),
  ('London Fog', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/London_Fog.jpg?h=fbf7a813&itok=5IDL8nY7', 'Brew Bar', 'The perfect marriage of black tea, oil of bergamot, mandarin flavor and vanilla. Soothing and comforting, lightly floral and warm', 4),
  ('Maple Tea Latte', 4.10, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/MapleTeaLatte.jpg?h=fbf7a813&itok=UTPTV8gg', 'Brew Bar', 'Cozy in a cup. Full flavoured English Breakfast tea is perfectly paired with steamed milk and maple. No artificial flavours, colours or preservatives', 4),
  ('Brewed Coffee', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Coffee.jpg?h=fbf7a813&itok=7p94bCMh', 'Brew Bar', 'We care where our coffee comes from. That’s why all our beans are Fairly Traded, and 99% are Rainforest Alliance Certified', 4),
  ('Iced Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Iced_Moccaccino.jpg?h=fbf7a813&itok=dOZTYVP4', 'Over Ice', 'A sensational sip, with the deep rich flavours of chocolate and espresso poured over ice. Served with whipped cream', 4),
  ('Italian Soda', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Italian_Soda.jpg?h=fbf7a813&itok=fdc8ks4x', 'Over Ice', 'A refreshing and revitalizing combination of soda water and your choice of flavour, enjoyed best on hot summer afternoons', 4),
  ('Flash Cold Brew', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Flash_ColdBrew.jpg?h=fbf7a813&itok=CxGMkjoa', 'Over Ice', 'Our signature Flash Cold Brew Coffee is freshly brewed directly over ice, locking in the aromatics and delivering a smoother taste than traditional Iced Coffee. Available sweetened or unsweetened. Served over ice', 4),
  ('Brewed Iced Tea', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Iced_Tea.jpg?h=fbf7a813&itok=sHdX69jQ', 'Over Ice', 'Our premium English Breakfast Tea, perfectly steeped, chilled, and poured over ice. Available sweetened or unsweetend', 4),
  ('Almond Date', 3.20, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/AlmondDateSmoothie_0.jpg?h=4950497c&itok=5KI8fpvk', 'Blended', 'The Almond Date Smoothie with Flax delivers a delicious creamy, nutty profile and is sweetened with nature’s candy – dates. Made with 1 whole banana. Gluten Friendly. Dairy Free. Vegan', 4),
  ('Caramel Frappe', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Caramel_Frappe_0.jpg?h=fbf7a813&itok=J15xUkWu', 'Blended', 'Sweet and creamy caramel paired with espresso', 4),
  ('Chai Frappe', 3.30, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Frappe_0.jpg?h=fbf7a813&itok=lnq2Zwgm', 'Blended', 'A delicately sweet and creamy blend of spiced chai and milk blended with ice', 4),
  ('Green Mongo Boost', 3.80, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/GreenMangoSmoothie_0.jpg?h=c5883cbc&itok=d5yTws8d', 'Blended', 'A nourishing on-the-go snack - made with mango puree, pure kale and spinach powder, whey protein and 1 whole banana. Gluten Friendly', 4),
  ('Con Panna', 4.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Con_Panna.jpg?h=fbf7a813&itok=mGiPBRoS', 'Espresso Bar', 'A true indulgence: espresso topped with a generous dollop of real whipped cream', 5),
  ('Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Moccaccino_0.jpg?h=fbf7a813&itok=p7n3eafi', 'Espresso Bar', 'An aromatic and robust blend, featuring the deep rich flavours of chocolate and espresso. Served with whipped cream', 5),
  ('Espresso Macchiato', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Espresso_Macchiato.jpg?h=fbf7a813&itok=PSaug2AA', 'Espresso Bar', 'A signature beverage, featuring espresso with milk and topped with a dollop of foam', 5),
  ('Cappuccino', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Cappuccino_0.jpg?h=fbf7a813&itok=3tf5sHGA', 'Espresso Bar', 'A soothing sip, combining equal portions of espresso, steamed milk, and foam for an ideal tasting experience', 5),
  ('Chai Latte', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Latte.jpg?h=fbf7a813&itok=CDr2y4ax', 'Brew Bar', 'A boldly aromatic tea latte with high cinnamon and cardamom notes combined with Indonesian black tea from the Bandung region', 5),
  ('London Fog', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/London_Fog.jpg?h=fbf7a813&itok=5IDL8nY7', 'Brew Bar', 'The perfect marriage of black tea, oil of bergamot, mandarin flavor and vanilla. Soothing and comforting, lightly floral and warm', 5),
  ('Maple Tea Latte', 4.10, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/MapleTeaLatte.jpg?h=fbf7a813&itok=UTPTV8gg', 'Brew Bar', 'Cozy in a cup. Full flavoured English Breakfast tea is perfectly paired with steamed milk and maple. No artificial flavours, colours or preservatives', 5),
  ('Brewed Coffee', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Coffee.jpg?h=fbf7a813&itok=7p94bCMh', 'Brew Bar', 'We care where our coffee comes from. That’s why all our beans are Fairly Traded, and 99% are Rainforest Alliance Certified', 5),
  ('Iced Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Iced_Moccaccino.jpg?h=fbf7a813&itok=dOZTYVP4', 'Over Ice', 'A sensational sip, with the deep rich flavours of chocolate and espresso poured over ice. Served with whipped cream', 5),
  ('Italian Soda', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Italian_Soda.jpg?h=fbf7a813&itok=fdc8ks4x', 'Over Ice', 'A refreshing and revitalizing combination of soda water and your choice of flavour, enjoyed best on hot summer afternoons', 5),
  ('Flash Cold Brew', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Flash_ColdBrew.jpg?h=fbf7a813&itok=CxGMkjoa', 'Over Ice', 'Our signature Flash Cold Brew Coffee is freshly brewed directly over ice, locking in the aromatics and delivering a smoother taste than traditional Iced Coffee. Available sweetened or unsweetened. Served over ice', 5),
  ('Brewed Iced Tea', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Iced_Tea.jpg?h=fbf7a813&itok=sHdX69jQ', 'Over Ice', 'Our premium English Breakfast Tea, perfectly steeped, chilled, and poured over ice. Available sweetened or unsweetend', 5),
  ('Almond Date', 3.20, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/AlmondDateSmoothie_0.jpg?h=4950497c&itok=5KI8fpvk', 'Blended', 'The Almond Date Smoothie with Flax delivers a delicious creamy, nutty profile and is sweetened with nature’s candy – dates. Made with 1 whole banana. Gluten Friendly. Dairy Free. Vegan', 5),
  ('Caramel Frappe', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Caramel_Frappe_0.jpg?h=fbf7a813&itok=J15xUkWu', 'Blended', 'Sweet and creamy caramel paired with espresso', 5),
  ('Chai Frappe', 3.30, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Frappe_0.jpg?h=fbf7a813&itok=lnq2Zwgm', 'Blended', 'A delicately sweet and creamy blend of spiced chai and milk blended with ice', 5),
  ('Green Mongo Boost', 3.80, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/GreenMangoSmoothie_0.jpg?h=c5883cbc&itok=d5yTws8d', 'Blended', 'A nourishing on-the-go snack - made with mango puree, pure kale and spinach powder, whey protein and 1 whole banana. Gluten Friendly', 5),
  ('Con Panna', 4.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Con_Panna.jpg?h=fbf7a813&itok=mGiPBRoS', 'Espresso Bar', 'A true indulgence: espresso topped with a generous dollop of real whipped cream', 6),
  ('Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Moccaccino_0.jpg?h=fbf7a813&itok=p7n3eafi', 'Espresso Bar', 'An aromatic and robust blend, featuring the deep rich flavours of chocolate and espresso. Served with whipped cream', 6),
  ('Espresso Macchiato', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Espresso_Macchiato.jpg?h=fbf7a813&itok=PSaug2AA', 'Espresso Bar', 'A signature beverage, featuring espresso with milk and topped with a dollop of foam', 6),
  ('Cappuccino', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Cappuccino_0.jpg?h=fbf7a813&itok=3tf5sHGA', 'Espresso Bar', 'A soothing sip, combining equal portions of espresso, steamed milk, and foam for an ideal tasting experience', 6),
  ('Chai Latte', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Latte.jpg?h=fbf7a813&itok=CDr2y4ax', 'Brew Bar', 'A boldly aromatic tea latte with high cinnamon and cardamom notes combined with Indonesian black tea from the Bandung region', 6),
  ('London Fog', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/London_Fog.jpg?h=fbf7a813&itok=5IDL8nY7', 'Brew Bar', 'The perfect marriage of black tea, oil of bergamot, mandarin flavor and vanilla. Soothing and comforting, lightly floral and warm', 6),
  ('Maple Tea Latte', 4.10, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/MapleTeaLatte.jpg?h=fbf7a813&itok=UTPTV8gg', 'Brew Bar', 'Cozy in a cup. Full flavoured English Breakfast tea is perfectly paired with steamed milk and maple. No artificial flavours, colours or preservatives', 6),
  ('Brewed Coffee', 3.00, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Coffee.jpg?h=fbf7a813&itok=7p94bCMh', 'Brew Bar', 'We care where our coffee comes from. That’s why all our beans are Fairly Traded, and 99% are Rainforest Alliance Certified', 6),
  ('Iced Moccaccino', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Iced_Moccaccino.jpg?h=fbf7a813&itok=dOZTYVP4', 'Over Ice', 'A sensational sip, with the deep rich flavours of chocolate and espresso poured over ice. Served with whipped cream', 6),
  ('Italian Soda', 3.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Italian_Soda.jpg?h=fbf7a813&itok=fdc8ks4x', 'Over Ice', 'A refreshing and revitalizing combination of soda water and your choice of flavour, enjoyed best on hot summer afternoons', 6),
  ('Flash Cold Brew', 4.50, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Flash_ColdBrew.jpg?h=fbf7a813&itok=CxGMkjoa', 'Over Ice', 'Our signature Flash Cold Brew Coffee is freshly brewed directly over ice, locking in the aromatics and delivering a smoother taste than traditional Iced Coffee. Available sweetened or unsweetened. Served over ice', 6),
  ('Brewed Iced Tea', 4.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Brewed_Iced_Tea.jpg?h=fbf7a813&itok=sHdX69jQ', 'Over Ice', 'Our premium English Breakfast Tea, perfectly steeped, chilled, and poured over ice. Available sweetened or unsweetend', 6),
  ('Almond Date', 3.20, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/AlmondDateSmoothie_0.jpg?h=4950497c&itok=5KI8fpvk', 'Blended', 'The Almond Date Smoothie with Flax delivers a delicious creamy, nutty profile and is sweetened with nature’s candy – dates. Made with 1 whole banana. Gluten Friendly. Dairy Free. Vegan', 6),
  ('Caramel Frappe', 3.25, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Caramel_Frappe_0.jpg?h=fbf7a813&itok=J15xUkWu', 'Blended', 'Sweet and creamy caramel paired with espresso', 6),
  ('Chai Frappe', 3.30, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/Chai_Frappe_0.jpg?h=fbf7a813&itok=lnq2Zwgm', 'Blended', 'A delicately sweet and creamy blend of spiced chai and milk blended with ice', 6),
  ('Green Mongo Boost', 3.80, 'https://secondcup.com/sites/default/files/styles/product_shot_large/public/product/images/GreenMangoSmoothie_0.jpg?h=c5883cbc&itok=d5yTws8d', 'Blended', 'A nourishing on-the-go snack - made with mango puree, pure kale and spinach powder, whey protein and 1 whole banana. Gluten Friendly', 6);

INSERT INTO customer_information
  (current_beans, lifetime_beans, tier, accelerator, user_id)
VALUES
  (300, 4000, 'Master', 1.9, 7),
  (0, 0, 'Basic', 1, 8);

INSERT INTO orders
  (time_created, total_price, completed, store_id, user_id)
VALUES
  ('2021-01-01 19:10:25', 11.25, FALSE, 1, 7),
  ('2021-01-01 19:11:25', 7.75, FALSE, 1, 8),
  ('2021-01-01 19:12:25', 7.50, FALSE, 2, 7),
  ('2021-02-02 10:13:25', 7.10, FALSE, 2, 8);

INSERT INTO order_items
  (order_id, menu_item_id)
VALUES
  (1, 1),
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 6),
  (4, 7),
  (4, 8);