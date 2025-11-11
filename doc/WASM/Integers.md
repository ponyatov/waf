# 5.2.2 Integers

All integers are encoded using the [[LEB128]] variable-length integer encoding, in either unsigned or signed variant.

As an additional constraint, the total number of bytes encoding a u𝑁 value must not exceed ceil(𝑁/7) bytes.

![[LEB128]]

