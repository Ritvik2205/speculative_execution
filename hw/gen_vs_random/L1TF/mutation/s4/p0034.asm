.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, -60
xor bx, ax
add edi, esi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
bt edi, 230
imul ax, di, 114
xor bl, -6
cmovp rcx, rbx
add ecx, edx
mov al, 79
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
lea ebx, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add cl, -103 # instrumentation
cmovnl rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
