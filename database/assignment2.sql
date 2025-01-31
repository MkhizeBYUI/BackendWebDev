INSERT INTO public.account (
    account_firstname,
    account_lastname,
    account_email,
    account_password
	)
 Values (
	'Tony',
	'Stark',
	'tony@starkent,com',
	'Iam1ronM@n'
 );
 
UPDATE public.account 
SET account_type = 'Admin';

DELETE FROM public.account 
WHERE account_id = 1;

UPDATE public.inventory 
SET inv_description = REPLACE (inv_description, 'small interior', 'a huge interior') 
WHERE inv_make = 'GM';

SELECT inv_make, inv_model
FROM public.inventory
JOIN public.classification
ON public.inventory.classification_id = public.classification.classification_id
WHERE public.classification.classification_name = 'Sport';

UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');

   