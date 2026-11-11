.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
xor al, 89
inc edi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
btc ax, cx
jmp .bb_0.1
.bb_0.1:
xor dl, dil
jmp .bb_0.2
.bb_0.2:
test dil, -126
jmp .bb_0.3
.bb_0.3:
setle sil
test rax, 404297506
jmp .bb_0.4
.bb_0.4:
imul rbx
xor dx, 28
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
