.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -2015966884
cmovbe dx, cx
and dil, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
cmovo si, ax
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
xor al, cl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rcx
cmovnp rdx, rdi
or rbx, rdi
xor dl, 40
btc rcx, 94
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 44
bts si, di
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
bts rbx, rsi
bt ecx, 49
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
