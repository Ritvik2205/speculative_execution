.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
cmp bx, -21
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
imul cx, si
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
imul sil
add cl, cl
sbb rdi, 32
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
cmp cl, 57
jmp .bb_0.1
.bb_0.1:
add cl, 6 # instrumentation
cmovl esi, ecx
or rcx, 67
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
