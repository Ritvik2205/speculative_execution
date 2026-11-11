.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and sil, -55
sub al, dl
lea eax, qword ptr [rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and bl, bl
test cl, -62
sbb sil, al
test bl, -8
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
