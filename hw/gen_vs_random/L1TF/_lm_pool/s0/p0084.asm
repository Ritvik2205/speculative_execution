.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
test al, -104
add cl, -20
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
