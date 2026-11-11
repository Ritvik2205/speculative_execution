.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and al, 84
xor dl, -43
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
and al, 82
jmp .bb_0.2
.bb_0.2:
test dl, -85
cmovb bx, di
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
