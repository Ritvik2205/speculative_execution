.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, bl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add bl, dl
cmp dil, 62
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
