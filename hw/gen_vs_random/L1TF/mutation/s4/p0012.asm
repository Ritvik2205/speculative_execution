.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx + rbx]
xor bl, -116
cmovp rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
bt edi, 191
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
xor bx, ax
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add cl, -103 # instrumentation
cmovnl rdx, rax
and rdi, -60
imul ax, di, 114
add ecx, edx
mov al, -26
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
add edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
