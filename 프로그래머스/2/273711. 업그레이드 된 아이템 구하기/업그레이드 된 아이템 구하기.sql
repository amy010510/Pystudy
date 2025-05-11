SELECT 
    I.item_id,
    I.item_name,
    I.rarity
FROM 
    item_info AS I
JOIN 
    item_tree AS T ON I.item_id = T.item_id
JOIN 
    item_info AS F ON T.parent_item_id = F.item_id
WHERE
    F.rarity = 'RARE'
ORDER BY
    I.item_id DESC;