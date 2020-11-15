# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Storextra.delete_all 
Store.delete_all 
Category.delete_all 
User.delete_all

Category.create(
    [
        {
            name: 'Comida'
        },
        {
            name: 'Autos'
        },
        {
            name: 'Entretención'
        },
        {
            name: 'Ropa'
        },
        {
            name: 'Ventas'
        }
    ]
)
Store.create(
    [
        {
            name: 'Los gorditos churrascos',
            address: 'Av. Bulnes 1000',
            phone: '+5699999999',
            email: 'emailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Reparaciones autos',
            address: 'Av. Bulnes 1100',
            phone: '+5699999999',
            email: 'e.mailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Pizzas a domicilio',
            address: 'Av. Bulnes 1200',
            phone: '+5699999999',
            email: 'em.ailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Pasteles y pastelitos',
            address: 'Av. Bulnes 1300',
            phone: '+5699999999',
            email: 'ema.ilpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Papitas y pollo',
            address: 'Av. Bulnes 1400',
            phone: '+5699999999',
            email: 'emai.lpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'JUEGOS PS4',
            address: 'Av. Bulnes 1500',
            phone: '+5699999999',
            email: 'email.pararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Poleras y pantalones',
            address: 'Av. Bulnes 1600',
            phone: '+5699999999',
            email: 'emailp.ararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Comics de todo',
            address: 'Av. Bulnes 1700',
            phone: '+5699999999',
            email: 'emailpa.rarails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Juegos PC',
            address: 'Av. Bulnes 1800',
            phone: '+5699999999',
            email: 'emailpar.arails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Ropa tejida',
            address: 'Av. Bulnes 1900',
            phone: '+5699999999',
            email: 'emailpara.rails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Mas comida para llevar',
            address: 'Av. Bulnes 2000',
            phone: '+5699999999',
            email: 'emailparar.ails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Zapatos de moda',
            address: 'Av. Bulnes 2100',
            phone: '+5699999999',
            email: 'emailparara.ils2020@gmail.com',
            password: '123456'
        }
    ]
)
User.create(
    [
        {
            name: 'User uno',
            email: 'emailp.ararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'User dos',
            email: 'emailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'User tres',
            email: 'e.mailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'User quatro',
            email: 'em.ailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'User cinco',
            email: 'ema.ilpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'User seis',
            email: 'emai.lpararails2020@gmail.com',
            password: '123456'
        }
    ]
)
Storextra.create(
    [
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 1,
            category_id: 1
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 2,
            category_id: 2
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 3,
            category_id: 1
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 4,
            category_id: 1
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 5,
            category_id: 1
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 6,
            category_id: 3
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 7,
            category_id: 4
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 8,
            category_id: 3
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 9,
            category_id: 3
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 10,
            category_id: 4
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 11,
            category_id: 1
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 12,
            category_id: 4
        }
    ]
)AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?