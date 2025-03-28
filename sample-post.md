---
title: "Lorem ipsum dolor sit amet"
---

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Initial Discovery

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

```c
void handle_message(char *input) {
    char buffer[64];
    strcpy(buffer, input);
    process_buffer(buffer);
}
```

## Vulnerability Analysis

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

```terminal
$ gdb -q ./server
Reading symbols from ./server...
(gdb) disas handle_message
Dump of assembler code for function handle_message:
   0x08048640 <+0>:     push   ebp
   0x08048641 <+1>:     mov    ebp,esp
   0x08048643 <+3>:     sub    esp,0x48
```

## Developing the Exploit

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

```python
#!/usr/bin/env python3
from pwn import *

def build_payload():
    padding = b"A" * 64
    saved_ebp = b"B" * 4
    ret_addr = p32(0xdeadbeef)
    return padding + saved_ebp + ret_addr

if __name__ == "__main__":
    payload = build_payload()
    print(payload)
```

## References

- [test123](https://example.com)

- [test123](https://example.com)

- [test123](https://example.com)
