.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -103 # instrumentation
cmovnl rdx, rax
xor bx, ax
cmovp rcx, rbx
bt edi, 230
lea ebx, qword ptr [rdx + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
xor bl, -116
add ecx, edx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, -60
add edi, esi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
imul ax, di, 114
mov al, -102
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
