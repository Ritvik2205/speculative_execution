.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
not dil
xor dl, -43
and cl, al
test sil, -55
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
or al, sil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and al, dl
or bl, dil
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
