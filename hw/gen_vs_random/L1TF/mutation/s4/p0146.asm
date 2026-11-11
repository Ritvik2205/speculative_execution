.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, -102
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
bt edi, 230
add ecx, edx
cmovp rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
add cl, -103 # instrumentation
cmovnl rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
add edi, esi
xor bx, ax
lea ebx, qword ptr [rdx + rbx]
and rdi, -60
xor bl, -6
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
imul ax, di, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
