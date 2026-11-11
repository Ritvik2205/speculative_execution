.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
add cl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
sbb al, bl
xor dl, bl
add al, bl
xor al, cl
cmovnl ebx, ecx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
xor al, -41
and dl, cl
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
xor ax, -2537
mov al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
