.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
mov esi, ebx
inc dl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
lea rcx, qword ptr [rdx + rcx + 78]
xor dl, al
xor dil, -42
sbb cl, dil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
