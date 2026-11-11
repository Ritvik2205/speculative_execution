.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
add cl, 39 # instrumentation
lea cx, qword ptr [rsi]
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
cmovnle edx, esi
add dl, -1
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
sbb sil, 19
imul rbx, rax, 6
xor eax, ecx
lea ebx, qword ptr [rsi + rbx + 65254]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
add dl, al
xor ax, 34
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
