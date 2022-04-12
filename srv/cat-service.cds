using my.bookshop as my from '../db/data-model';

service CatalogService {
    entity Books @(requires: 'authenticated-user') as projection on my.Books;
}