.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 95
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
lea rax, qword ptr [rax + rdx + 35]
adc bl, cl
xor sil, 1
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 6 # instrumentation
adc rbx, 4
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
mul di
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
