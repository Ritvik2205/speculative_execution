.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
add cl, 39 # instrumentation
lea cx, qword ptr [rsi]
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
cmovnle edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
add dl, 125
jmp .bb_0.1
.bb_0.1:
xor eax, ecx
add dl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
lea ebx, qword ptr [rsi + rbx + 65254]
sbb sil, -79
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
imul rbx, rax, 6
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
