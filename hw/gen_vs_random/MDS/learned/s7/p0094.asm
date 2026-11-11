.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 25
test sil, bl
test bl, -114
btr bx, dx
jmp .bb_0.1
.bb_0.1:
bts rax, 77
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.3
.bb_0.3:
and cl, -19
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
test dil, sil
or al, 25
and al, 35
test al, -81
and bx, 46
or sil, bl
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
