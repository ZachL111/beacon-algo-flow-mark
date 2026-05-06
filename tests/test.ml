#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 91; capacity = 82; latency = 10; risk = 14; weight = 7 };;
expect (score signal_case_1 = 164);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 63; capacity = 91; latency = 27; risk = 19; weight = 9 };;
expect (score signal_case_2 = 40);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 72; capacity = 76; latency = 8; risk = 13; weight = 8 };;
expect (score signal_case_3 = 134);;
expect (classify signal_case_3 = "review");;

#use "src/review.ml";;
let domain_review = { signal = 72; slack = 37; drag = 20; confidence = 56 };;
expect (review_score domain_review = 177);;
expect (review_lane domain_review = "ship");;
