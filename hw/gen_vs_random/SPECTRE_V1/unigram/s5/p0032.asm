.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
cmovo si, bx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
xor dl, dl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
imul rcx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
lea cx, qword ptr [rsi + rcx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
