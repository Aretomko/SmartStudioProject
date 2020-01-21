
 <#import "parts/common.ftl" as c>

 <@c.page>
 <div class="servicePriceController">
        <h3>Add new Price</h3>
        <form action="/addServicePriceRecord" method="post">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Service name</label>
                        <div class="col-sm-6">
                            <input type="text" name="priceName" class="form-control" placeholder="Service name" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Price:</label>
                        <div class="col-sm-6">
                            <input type="text" name="pricePrice" class="form-control" placeholder="Price" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Phone name:</label>
                        <div class="col-sm-6">
                            <input type="text" name="phoneName" class="form-control" placeholder="Phone name" />
                        </div>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <button class="btn btn-primary" type="submit">Add</button>
                </form>
    </div>
     <div class="servicePriceController">
            <h3>Add new Phone Facade</h3>
            <form action="/addPriceRecordFacade" method="post">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Producer</label>
                            <div class="col-sm-6">
                                <input type="text" name="producer" class="form-control" placeholder="Producer" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">ImageLink</label>
                            <div class="col-sm-6">
                                <input type="text" name="imageLink" class="form-control" placeholder="ImageLink" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Phone name:</label>
                            <div class="col-sm-6">
                                <input type="text" name="phoneName" class="form-control" placeholder="PhoneName" />
                            </div>
                        </div>
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <button class="btn btn-primary" type="submit">Add</button>
                    </form>
        </div>
    </@c.page>