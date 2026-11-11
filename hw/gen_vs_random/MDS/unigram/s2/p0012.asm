.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
bt bx, si
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 80
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and dl, -73
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr cx, bx
and al, -8
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
btc rax, 59
test cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rdx, 66
jmp .bb_0.1
.bb_0.1:
not dil
test ecx, -1843375753
bts eax, 222
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovb eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
