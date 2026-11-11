.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
or al, 30
bts rax, 77
and al, 82
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or dl, 51
test rax, -1579405415
and rax, -2058103810
jmp .bb_0.1
.bb_0.1:
and eax, 33
test al, 127
and cx, -2
test dil, -51
btr eax, 51
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
