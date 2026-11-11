.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
add sil, -61
or al, -5
or al, -57
sbb bl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
xor al, bl
jmp .bb_0.2
.bb_0.2:
setno dl
jmp .bb_0.3
.bb_0.3:
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
