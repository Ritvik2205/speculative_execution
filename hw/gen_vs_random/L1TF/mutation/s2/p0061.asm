.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -116
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov al, -102
cmovp rcx, rbx
lea ebx, qword ptr [rdx + rbx]
and rdi, -60
bt edi, 230
add cl, -103 # instrumentation
cmovnl rdx, rax
xor bx, ax
add edi, esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add ecx, edx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
imul ax, di, 114
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
xor ax, -27503
mov al, 79
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
