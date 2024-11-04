;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; FAB 3000 - Price Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This describes how FAB 3000 calculates pricing is displayed to customers.
; You have the freedom to adjust any values, and the price changes will reflect
; inside FAB 3000.  If you have any questions contact: support@numericalinnovations.com
;
; Important -- When editing any of the the price configuration values below, 
; please don't forget to include the quotes (i.e. " ").  If you forget or
; do not have a matching start/end quote, it may cause FAB 3000 pricing to fail.
; 
; GOOD:   
; PromoPercentage="1.0"
; LessThan5000="0.0121"
;
; BAD:
; PromoPercentage="1.0
; LessThan5000=0.0121
; LessThan5000=0.0121"
;
;
; FAB 3000 Price configuration is divided into 3 parts:
; Section  - Contained in Braces [], and describes a group of items.
; Item     - An item is a specific setting within a Section.
; Value    - The value representing an item. All Values must be 
;            contained within matching Quotes!!
;
;
; NOTE:  Comments can also be included in the file by prefacing the comment 
;        with a semicolon (;).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; General - Section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; SilkBottom      - Additional charge (per PCB) when bottom Silkscreen is required.
; PromoPercentage - A final adjustment you can make to the price (say for instance
;                   you wish to have a 1-Day Promo to save 25%, simply enter 0.75
;                   and the final cost will be discounted by 25%)
; EnablePrice     - If you set to "FALSE" FAB 3000 will not display pricing.
; Shipping    	  - Standard Shipping Price. Rush order shipping price is multiplied 
;					by DeliveryFactor
; TaxRate 		  - Percentage Tax Rate.  If your tax rate is 7.25%, enter 1.0725
;					If taxes are not collected than leave blank.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[General]
SilkBottom="30"
PromoPercentage="1.0"
EnablePrice="FALSE"
Shipping="35.0"
TaxRate="1.075"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Options - Section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DfmCheck        - Perform DFM Check
; DfmCheckLevel   - Determine level of DFM violations to report. Choose from
;			        Critical (Only Critical violations are reported)
;                   Elevated (Critical and Elevated violations are reported)
;				    All (Every DFM violation is reported)
; NetlistCheck    - Perform Netlist Check (requires an IPC-2581 file)
; FindMissingLayers - Detect any missing layers that could put a job on hold.
; Stackup 		  - Generate and include a Stackup drawing.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[Options]
DfmCheck="TRUE"
DfmCheckLevel="Critical"
NetlistCheck="TRUE"
FindMissingLayers="TRUE"
Stackup="FALSE"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Notes - Section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Notes        - Enter any notes you wanted included. Leave blank to ignore.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[Notes]
Notes="No Pricing Required."


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Delivery Factor (in Days) - Section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Each Number represents Deliver Days:  1,2,3,4,5,6,7,10,14
; This lets you charge a premium or discount depending on the number
; of days a customer requires their PCB's to be manufactured.
;
; EXAMPLE:  Lets say you want to add a 33% Premium for 1-Day delivery, and offer a 
;           generous 10% discount for 14 Day delivery. Enter the following below:
;
;		1="1.33"  (this means 1 day order price is multiplied by a factor 1.33)
;           14="0.9"  (this means 14 day order price is multiplied by a factor 0.9)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[DeliveryFactor]
1="2.0"
2="1.6"
3="1.5"
4="1.4"
5="1.3"
6="1.2"
7="1.1"
10="1.0"
14="1.0"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Quantity Discount Percentage - Section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Lets you control the discount applied when a user request multiple PCB's.
; Each item is described with - LessThan#, and placed into an ordered fashion.
;
; Thus item LessThan4 refers to Quantities 1-3,  item LessThan6 refers to Quantities 4-5,
; item LessThan18 refers to Quantities 16-17, item LessThan18 refers to Quantities 16-17,
; and item LessThan50 refers to Quantities 20-49
;
; EXAMPLE:  If you want to offer a 65% discount for quantities of 6,7 
;           enter:        LessThan8="0.355"
;
;           If you want to offer a 90% discount for quantities between 50-99
;           enter:        LessThan100="0.1"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[QuantityDiscountPercentage]

LessThan4="1.0"
LessThan6="1.0"
LessThan8="1.0"
LessThan10="1.0"
LessThan12="0.8"
LessThan14="0.8"
LessThan16="0.8"
LessThan18="0.7"
LessThan20="0.7"
LessThan50="0.6"
LessThan100="0.5"
LessThan200="0.31"
LessThan500="0.25"
LessThan1000="0.25"
LessThan5000="0.25"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Layer Pricing - Section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; FAB 3000 calculates price per board by using the following simple formula:
; Minimum Charge + (Board Area * PPSI)
;
; MinimumCharge   - This is the minimum charge that you are willing to charge per
;                   PCB. For example if a customer has a board size of 1/2" X 1/2"
;                   they will at very least pay the minimum charge.
; PPSI            - Price Per Square Inch. 
; MinimumCharge_NoMask - Same as MinimumCharge except for PCB's that do not require mask.
; PPSI_NoMask     - Same as PPSI except for PCB's that do not require mask.
; PremiumFactor   - An additional factor which allows you to 'fine-tune' your pricing
;                   for more complicated PCB's with large layer counts.
;
; Note:  Separate Item/Values need to be defined for each layer count that you
;        want FAB 3000 to provide pricing. Delete the Layer Count Section(s) 
;        you do not manufacturer or do not wish to have FAB 3000 calculate the price.  
;
;        EXAMPLE:  If you do not manufacturer 24 Layer PCB's, than delete the entire
;                  section defined as: [24_Layer].  If you do not want FAB 3000
;                  quoting 16 layer boards, than delete the entire section defined 
;                  as: [16_Layer].
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[2_Layer]
MinimumCharge="5.0"
PPSI="3.0"
MinimumCharge_NoMask="5.0"
PPSI_NoMask="2.0"
PremiumFactor="1.0"

[4_Layer]
MinimumCharge="214.0"
PPSI="0.9"
MinimumCharge_NoMask="104.5"
PPSI_NoMask="0.83"
PremiumFactor="1.0"

[6_Layer]
MinimumCharge="312.0"
PPSI="1.09"
PremiumFactor="1.0"

[8_Layer]
MinimumCharge="312.0"
PPSI="1.09"
PremiumFactor="1.3"

[10_Layer]
MinimumCharge="312.0"
PPSI="1.09"
PremiumFactor="1.6"

[12_Layer]
MinimumCharge="312.0"
PPSI="1.09"
PremiumFactor="1.9"

[14_Layer]
MinimumCharge="312.0"
PPSI="1.09"
PremiumFactor="2.2"

[16_Layer]
MinimumCharge="312.0"
PPSI="1.09"
PremiumFactor="2.5"
