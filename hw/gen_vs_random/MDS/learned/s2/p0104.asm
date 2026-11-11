.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and cl, 79
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
btr rax, 56
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, 25
and sil, -9
test al, 66
and cl, dl
btc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
