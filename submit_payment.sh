#!/usr/bin/env bash

curl 'http://localhost:3000/orders' \
-H 'Connection: keep-alive' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'Origin: http://localhost:3000' \
-H 'Upgrade-Insecure-Requests: 1' -H 'Content-Type: application/x-www-form-urlencoded' \
-H 'User-Agent: curl' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' \
-H 'Referer: http://localhost:3000/cart' -H 'Accept-Encoding: gzip, deflate, br' \
-H 'Accept-Language: en-US,en;q=0.9' \
--verbose \
-H 'Cookie: _blog_session=SkVFenEyNGlJVHA2ZWhRWjY2eFFYR3M4dmxWaUtMK0pzRWd2S2QwQVVrdFRyVXB2RUl5eTlZSHczeG5SUXI3VlZBL2Rtb2Z2eXlXaDlXbm5paGtVa25jcytOL1pSYU1CaFJKQlpzdTk2Zml6d1EvK0p6d21oN3BianZkVjRSODdJVzliWjhUUER3WlBmVi9KWmQzYktnPT0tLTZvNFVPM2VualN0VUZMdlJrU0JwdVE9PQ%3D%3D--046ab89e60daa7712d46d42e0ce218c9a987b24e; cart=%7B%2216%22%3A1%2C%2212%22%3A1%7D; _jungle_session=NzF0anFiYUh4djJNeEdMTEJxRW1mTDhaaUR4RC94THh3WU14Ni9acU94cmZ4VTJGQWdvTmV3dElEL0trU2VXYzU2dEZMRFdnY21kclNUODkrNFYwSnhpZGZuQUxDMHVYcVk3YnRSQTNjTFFSMDVFS3BaL2NxV1ZaSWliQVk5S3lRUXVtNkxETys1ZHB2TUt2b25Vd3p3L3VYZWduTU0xb2xud0xjZUh3UkZsU0NneFZVRkE3OGpLSElTOEdtbUgyRXhVWG8wc3E2R0NlcEtuT3duckhIRU5OVlVHSEtXQ3hLT3FCZzhacWt1QlRJeU5VWThwZ1RaU1RrbDZFQ0dKRnRpZXh3U1EvbDNKN1IxcFFmckRXVGc9PS0tN1czdlZVdmdkSkFUTGtzMTYwZnppUT09--3f0783bf7b37fe843ebb9682a30d0921faae7bb6' \
--data 'utf8=%E2%9C%93&authenticity_token=3BslsjnkGV6%2FaIQkzohSo%2FtOPMRKsJ0YxP6qSTDDjzrGlFUdcwSPYln%2B6RthLNeL9zxmshf8vpfFUDCwjLI0yQ%3D%3D&stripeToken=tok_1E6kN8K5uAsnuMXx454T88ls&stripeTokenType=card&stripeEmail=kvirani%40gmail.com' --compressed