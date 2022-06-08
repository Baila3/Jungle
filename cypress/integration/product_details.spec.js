describe("Home-Page", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("Should go to the products page", () => {
    cy.get('.product_item').first().click()
  });

})