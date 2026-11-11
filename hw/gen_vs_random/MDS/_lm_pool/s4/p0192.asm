.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
or eax, -1777347252
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and sil, -9
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and bl, 68
or cx, -42
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
or al, -75
or al, dil
test sil, dl
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
