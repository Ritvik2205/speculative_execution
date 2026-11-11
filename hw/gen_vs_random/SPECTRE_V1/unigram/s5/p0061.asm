.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 45
bt rcx, 99
lea ax, qword ptr [rdi + rdx]
cmp ebx, eax
sbb dl, sil
xor esi, 106
xor al, sil
and rax, 2134929425
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -51 # instrumentation
cmovl edi, ecx
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
sub dl, sil
lea ebx, qword ptr [rdx + rdx + 46587]
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
lea rbx, qword ptr [rcx + rcx + 72]
add si, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
