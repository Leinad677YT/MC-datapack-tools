##########################################################################################################
##                                              HOW TO USE                                              ##
##########################################################################################################
## 1. Run this function with the 'Input' macro variable set to what you want to convert to a string     ##
##                                                                                                      ##
## Output: Stringified version of your input                                                            ##
##         Example: 123 => "123"                                                                        ##
##                                                                                                      ##
## The output is found in the 'stringlib:output to_string' data storage                                 ##
##########################################################################################################

$data modify storage stringlib:output to_string set value "$(Input)"
