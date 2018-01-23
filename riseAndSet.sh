#!/bin/bash

curl --silent "https://sunrise-sunset.org/us/redwood-city-ca" |

grep --max-count=2 -e '<strong class="time"' |

sed 's/.*time">//' |

sed 's/<.*//'
