.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -103 # instrumentation
cmovnl rdx, rax
lea ebx, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, -60
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
xor bx, ax
bt edi, 230
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
imul ax, di, 114
xor bl, -6
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add edi, esi
mov al, 79
add ecx, edx
cmovp rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
