.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 2134929425
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
bt bx, di
cmovnbe di, dx
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
add bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
add dl, -61 # instrumentation
seto dl
lea dx, qword ptr [rcx + rdi + 45005]
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
