.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
xor cl, 89
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
xor cl, dil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
add ax, -24961
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
