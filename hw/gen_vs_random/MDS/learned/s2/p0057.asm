.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
test cl, 62
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bx, 31
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
xor al, -19
xor dl, sil
test dil, -80
jmp .bb_0.1
.bb_0.1:
test rax, -1579405415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
