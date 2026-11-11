.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
setl bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 9
add dil, -40 # instrumentation
sbb rdi, 36
and rdi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rdi]
add bl, 119 # instrumentation
cmovle si, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
lea rdx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
cmovl rsi, rcx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
