.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -94 # instrumentation
or al, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
lea ecx, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 83
sbb edx, 105
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
sbb cl, al
and bx, -118
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sbb dil, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
