from Products.ContentWellPortlets.browser.viewlets import ContentWellPortletsViewlet

class PortletsBelowTitleViewlet(ContentWellPortletsViewlet):
    name = 'BelowTitlePortletManager'
    manage_view = '@@manage-portletsbelowtitlecontent'
