.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
sbb al, 49
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
cmp al, bl
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea cx, qword ptr [rdi + rax + 42]
xor bl, dil
setno dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
