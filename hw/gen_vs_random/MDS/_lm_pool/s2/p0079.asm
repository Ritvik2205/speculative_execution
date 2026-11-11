.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor rax, -91
or al, al
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
bts rdx, rax
xor cl, bl
and bl, 68
btc di, cx
and sil, dil
and cl, dil
xor bl, al
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
