.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
add cl, 39 # instrumentation
lea cx, qword ptr [rsi]
cmovnle edx, esi
add dl, 125
jmp .bb_0.1
.bb_0.1:
imul rbx, rax, 6
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
xor eax, ecx
lea ebx, qword ptr [rsi + rbx + 65254]
add dl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
xor ax, 22976
sbb sil, 19
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
jmp .bb_0.2
.bb_0.2:
imul rbx
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
xor al, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
imul rdx, rdi
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
