.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
sbb sil, -78
lea cx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and al, 33
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -23
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
