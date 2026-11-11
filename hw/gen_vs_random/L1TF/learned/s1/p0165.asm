.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
jmp .bb_0.1
.bb_0.1:
test al, -82
and ax, 37
test al, -70
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 22
btc ax, bx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rcx]
xor ax, 32760
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
