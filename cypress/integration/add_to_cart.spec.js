describe("Home-Page", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("Verify the total amount in cart before clicking add to cart button", () => {
    cy.get("li.nav-item.end-0").should("include.text", " My Cart (0)");
  })
  it("Verify the total amount in cart after clicking add to cart button", () => {
    cy.get('.btn').click({force: true} )
    cy.get("li.nav-item.end-0").should("include.text", " My Cart (1)");
  })
})