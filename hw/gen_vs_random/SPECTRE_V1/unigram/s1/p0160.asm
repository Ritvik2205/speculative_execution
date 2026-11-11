.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
imul rcx, rax, 24
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
lea cx, qword ptr [rbx + rdi + 70]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
add dil, -27 # instrumentation
setle dil
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
