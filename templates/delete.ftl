
 <#import "parts/common.ftl" as c>

 <@c.page>
     <div class="card-columns" id="message-list">
         <div class="form-row">
             <h2>New phones records</h2>
         </div>
         <#list priceRecords as priceRecord>
         <div class="card my-3">
             <div class="m-2">
                 <span>${priceRecord.name}</span>
             </div>
             <div class="card-footer text-muted">
                 <a href="/deletePriceRecord/${priceRecord.id}"><p>Delete</p></a>
             </div>
         </div>
         <#else>
         <h2>No NewPhonesRecords</h2>
         </#list>
     </div>
          <div class="card-columns" id="message-list-facade">
              <div class="form-row">
                  <h2>New phones records</h2>
              </div>
              <#list priceRecordFacades as priceRecordFacade>
              <div class="card my-3">
                  <div class="m-2">
                      <span>${priceRecordFacade.phoneName}</span>
                  </div>
                  <div class="card-footer text-muted">
                      <a href="/deletePriceRecord/${priceRecordFacade.id}"><p>Delete</p></a>
                  </div>
              </div>
              <#else>
              <h2>No NewPhonesRecords</h2>
              </#list>
          </div>
</@c.page>