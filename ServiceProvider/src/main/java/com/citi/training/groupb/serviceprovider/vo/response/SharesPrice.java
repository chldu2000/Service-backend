package com.citi.training.groupb.serviceprovider.vo.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SharesPrice {
<<<<<<< HEAD:ServiceProvider/src/main/java/com/citi/training/groupb/serviceprovider/vo/response/SharesPrice.java

=======
>>>>>>> 52b0f5011203f69c26b63d0db4a661d254769758:src/main/java/com/citi/training/groupb/servicedemo/vo/SharesPrice.java
    @JsonProperty("ric")
    String ric;

    @JsonProperty("shares_name")
    String sharesName;

    @JsonProperty("price")
    Double price;

    @JsonProperty("currency_name")
    String currencyName;
}
