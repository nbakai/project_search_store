# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.delete_all 
Store.delete_all 
User.delete_all
Storextra.delete_all 

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
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Reparaciones autos',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'e.mailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Pizzas a domicilio',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'em.ailpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Pasteles y pastelitos',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'ema.ilpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Papitas y pollo',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emai.lpararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'JUEGOS PS4',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'email.pararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Poleras y pantalones',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emailp.ararails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Comics de todo',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emailpa.rarails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Juegos PC',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emailpar.arails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Ropa tejida',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emailpara.rails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Mas comida para llevar',
            address: 'Av. España 1500',
            phone: '+5699999999',
            email: 'emailparar.ails2020@gmail.com',
            password: '123456'
        },
        {
            name: 'Zapatos de moda',
            address: 'Av. España 1500',
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
            store_id: 1
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 2
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 3
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 4
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 5
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 6
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 7
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 8
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 9
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 10
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 11
        },
        {
            description: 'Tienda donde se venden mucha variedad de cosas',
            horario_open: "10:00",
            horario_close: "19:00",
            link_facebook: 'www.facebook.com',
            link_instagram: 'www.instagram.com',
            link_whatsapp: 'www.whatsap.com',
            link_web: 'www.google.com',
            store_id: 12
        }
    ]
)