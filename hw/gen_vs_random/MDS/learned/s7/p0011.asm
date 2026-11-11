.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and al, sil
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
btc si, cx
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
or bl, cl
xor al, sil
test cl, sil
test rax, 1207043993
and al, -114
test eax, 343548072
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
