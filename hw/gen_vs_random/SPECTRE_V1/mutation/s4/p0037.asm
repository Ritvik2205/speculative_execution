.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -73 # instrumentation
btr di, bx
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add cl, -23 # instrumentation
cmovl ax, bx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
lea dx, qword ptr [rcx + rdi + 45005]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
cmovnbe di, dx
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
bt bx, di
add dl, -61 # instrumentation
seto dl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
add bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
