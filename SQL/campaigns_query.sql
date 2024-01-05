SELECT 
	c.cf_id,
	cont.email,
	c.company_name,
	c.description,
	c.goal,
	c.outcome,
	cat.category,
	subcat.subcategory
FROM campaigns AS c
JOIN contacts AS cont ON c.contact_id = cont.contact_id
JOIN categories AS cat ON c.category_id = cat.category_id
JOIN subcategories AS subcat ON subcat.subcategory_id = c.subcategory_id;
