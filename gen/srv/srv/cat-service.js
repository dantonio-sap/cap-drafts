const cds = require('@sap/cds')

class CatalogService extends cds.ApplicationService {
  async init() {
    const { Books } = this.entities

    this.before ('SAVE', Books, req => {
        console.log(JSON.stringify(req.headers));
    });
   
    // ensure to call super.init()
    await super.init() 
  }
}
module.exports = CatalogService