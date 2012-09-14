from zope.interface import Interface
from Products.ContentWellPortlets.browser.interfaces import IContentWellPortletManager

class IRedominoExtraPortlets(Interface):
    """
    A layer specific to this product. Is registered using browserlayer.xml
    """

class IPortletsBelowContentTitle(IContentWellPortletManager):
     """
     For the portlet manager below the content title.
     """
