.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
or cl, 7
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
bt bx, si
and al, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and dl, sil
test rax, 1978892575
jmp .bb_0.3
.bb_0.3:
and cl, cl
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
