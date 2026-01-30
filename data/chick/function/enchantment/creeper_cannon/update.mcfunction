## Inactive.
execute unless function chick:system/running run return 0

## Hold no devices.
execute unless predicate chick:hold/device run return 0

## Trigger.
function chick:enchantment/creeper_cannon/__/trigger
## Success.
return 1