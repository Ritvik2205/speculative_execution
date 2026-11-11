.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
sub bl, dl
setp dil
xor ebx, edi
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, -72548874
and cl, cl
sbb eax, 2098460225
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
mov bl, dl
sub al, -66
cmp ax, -11439
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
