.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
sub edi, 69
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 24
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
setnz dil
btr rax, 89
sbb al, -61
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 87
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
cmp ebx, 49
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 23
setbe dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
sub dl, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
