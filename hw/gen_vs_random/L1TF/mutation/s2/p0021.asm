.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, esi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rdi, -60
xor bx, ax
xor bl, -6
lea ebx, qword ptr [rdx + rbx]
add ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
imul ax, di, 114
cmovp rcx, rbx
add cl, -103 # instrumentation
cmovnl rdx, rax
bt edi, 191
mov al, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
