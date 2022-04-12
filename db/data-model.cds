namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}

annotate Books with @odata.draft.enabled;

entity BookCosts {
    key ID: Integer;
    book: Association to Books;
    purchasePrice: Integer;
    salesPrice: Integer;
}