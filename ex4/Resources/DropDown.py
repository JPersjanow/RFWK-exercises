from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
import robot.api.logger as logger

from bs4 import BeautifulSoup as bs


class DropDown:
    ROBOT_LIBRARY_SCOPE = "GOBAL"

    def init_driver(self):
        sel = BuiltIn().get_library_instance("SeleniumLibrary")
        return sel.driver

    @keyword("Gather Dropdown Data")
    def gather_dropdown_data(self):
        driver = self.init_driver()
        try:
            dropdown_element = driver.find_element(By.CLASS_NAME, "dropdown")
        except NoSuchElementException:
            BuiltIn().fail("Dropdown was not found!")

        ddp = DropDownParser(
            dropdown_source=dropdown_element.get_attribute("innerHTML")
        )
        options_elements = ddp.get_options()
        options_texts = ddp.get_options_text(options_elements=options_elements)
        ddp.log_options(options_text=options_texts)


class DropDownParser:
    def __init__(self, dropdown_source: str) -> None:
        self.dropdown = bs(dropdown_source, features="html.parser")

    def get_options(self):
        options_elements = self.dropdown.find_all("a", {"class": "menu-item"})
        return options_elements

    def get_options_text(self, options_elements):
        options_texts = []

        for option in options_elements:
            options_texts.append(option.text)

        return options_texts

    def log_options(self, options_text):
        log_table_elements = ""

        for option in options_text:
            log_table_elements += f"<tr><td>{option}</td></tr>"

        log_table = f"""<table class="tg"><thead>
        <tr><td class="tg-0lax">Dropdown elements found:</td></tr></thead>
        <tbody>{log_table_elements}</tbody></table>"""

        logger.info(log_table, html=True)
