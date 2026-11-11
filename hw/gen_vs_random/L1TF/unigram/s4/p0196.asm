.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 89
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
xor dil, dil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 80
cmovnl di, di
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 52
cmovnl ecx, esi
cmp rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
add cl, -38 # instrumentation
setbe sil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
imul rcx, rdi
add dl, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
