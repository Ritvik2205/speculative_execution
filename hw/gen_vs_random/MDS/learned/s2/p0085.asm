.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and di, 99
test rbx, 99
test cl, al
and rcx, -63
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
bt ax, di
or cl, al
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
