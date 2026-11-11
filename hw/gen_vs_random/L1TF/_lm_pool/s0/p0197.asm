.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
and dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
test cl, 64
and al, bl
jmp .bb_0.1
.bb_0.1:
test al, -32
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
add ax, 1313
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
