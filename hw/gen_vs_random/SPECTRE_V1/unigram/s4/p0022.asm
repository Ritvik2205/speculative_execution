.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 5
xchg edx, ecx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
cmovbe edx, eax
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 24
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
or di, di
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and al, -23
test ecx, 8
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
sbb ebx, 34
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
