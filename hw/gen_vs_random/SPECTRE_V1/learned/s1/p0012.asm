.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
mov bl, al
inc sil
cmp di, 5
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
lea rax, qword ptr [rdx + rsi + 61]
lea ax, qword ptr [rdi + rbx + 4]
lea rax, qword ptr [rcx]
xchg cl, bl
bswap rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
