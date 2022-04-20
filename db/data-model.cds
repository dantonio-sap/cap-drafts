namespace my.bookshop;
using { managed } from '@sap/cds/common';

entity Books: managed {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}

annotate Books with @odata.draft.enabled;
annotate Books with { modifiedAt @odata.etag };

entity BookCosts {
    key ID: Integer;
    book: Association to Books;
    purchasePrice: Integer;
    salesPrice: Integer;
}