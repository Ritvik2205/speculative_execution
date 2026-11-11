.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
adc dl, -49
add dil, -75
or ebx, -124
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, -55
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub cx, 80
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
