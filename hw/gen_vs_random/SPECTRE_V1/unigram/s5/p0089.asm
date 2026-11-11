.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
test al, -126
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
add al, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
add ebx, -116
cmovo dx, bx
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
add dl, 20 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 75
cmovz ecx, ebx
and rcx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rcx]
cmovb rcx, rax
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
