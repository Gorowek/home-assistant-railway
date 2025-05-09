"""Fake DHCP component to suppress errors."""
async def async_setup(hass, config):
    return True
