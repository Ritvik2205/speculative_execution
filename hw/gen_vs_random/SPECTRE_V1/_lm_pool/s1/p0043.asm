.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor cl, al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
sbb bl, -41
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 41
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
