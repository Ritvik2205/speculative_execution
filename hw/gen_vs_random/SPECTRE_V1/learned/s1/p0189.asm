.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
inc ebx
test bl, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test rax, 1469613902
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
