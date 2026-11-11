.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
lea edi, qword ptr [rsi]
lea ebx, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -103
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
cmovle rsi, rcx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
add dl, 6 # instrumentation
adc rdi, 67
add cl, -26 # instrumentation
cmovnp bx, si
btr edi, 86
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
