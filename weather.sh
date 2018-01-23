#!/bin/bash

#curl -s https://www.accuweather.com/en/us/redwood-city-ca/94062/current-weather/332009 |

curl --silent "https://www.wunderground.com/weather/us/ca/redwood-city/94062" |

grep --max-count=1 -e 'class="wu-value wu-value-to' |

sed 's/.*;">//' |

sed 's/<.*">//'