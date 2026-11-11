.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
bswap rsi
cmp dl, -93
sbb ebx, -116
lea ax, qword ptr [rsi + rsi]
mov di, ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
lea rdx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
add dl, -53 # instrumentation
dec ax
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
not ecx
and dl, 59
btc rax, 14
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
