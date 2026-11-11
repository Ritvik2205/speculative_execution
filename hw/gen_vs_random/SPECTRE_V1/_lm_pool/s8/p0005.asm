.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 48
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
xor al, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rdi + rdi + 67]
cmp bl, -114
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
mov cl, dil
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
