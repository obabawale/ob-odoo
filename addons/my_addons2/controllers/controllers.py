# -*- coding: utf-8 -*-
# from odoo import http


# class MyAddons2(http.Controller):
#     @http.route('/my_addons2/my_addons2', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/my_addons2/my_addons2/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('my_addons2.listing', {
#             'root': '/my_addons2/my_addons2',
#             'objects': http.request.env['my_addons2.my_addons2'].search([]),
#         })

#     @http.route('/my_addons2/my_addons2/objects/<model("my_addons2.my_addons2"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('my_addons2.object', {
#             'object': obj
#         })

