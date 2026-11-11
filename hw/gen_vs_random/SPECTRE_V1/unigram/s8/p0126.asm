.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
mov ecx, 42
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and dl, -109
setnb bl
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
mov bl, cl
sbb cl, dl
xor dx, -128
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
adc cl, -19
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
sub al, -1
add sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
