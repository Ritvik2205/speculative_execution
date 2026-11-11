.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sbb al, -112
or eax, -126
or al, 100
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
sbb eax, 1332762061
xor al, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
