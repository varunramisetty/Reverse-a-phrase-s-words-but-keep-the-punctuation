%dw 2.0
output application/json
import * from dw::core::Strings
---
(payload splitBy  "\n") map (
  do {
      var  y = $ splitBy  " " map ($ filter isAlphanumeric($))
      var x =($ splitBy " ") map if(isAlphanumeric($)) "" else $ filter !(isAlphanumeric($))
  ---
  y [-1 to 0] map ($ ++ x[$$] ) joinBy  " "}
)

