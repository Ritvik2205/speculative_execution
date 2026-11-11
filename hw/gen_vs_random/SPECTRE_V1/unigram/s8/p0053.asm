.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
add dil, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
add bl, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 86
or bl, 49
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and ebx, ebx
inc edx
add cl, cl
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
test rbx, 6
imul dl
adc dil, al
adc cl, -81
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
