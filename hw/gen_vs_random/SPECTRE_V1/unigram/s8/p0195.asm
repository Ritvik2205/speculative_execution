.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
cmovz dx, dx
sub dx, -23
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
xchg al, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
setp dl
and rcx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
mul dl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 27
add al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 86
or dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
