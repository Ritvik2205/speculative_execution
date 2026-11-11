.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, sil
sub edx, 96
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 88
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovbe edx, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 89
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
