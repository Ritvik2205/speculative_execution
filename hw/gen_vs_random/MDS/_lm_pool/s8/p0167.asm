.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
or al, bl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
xor cx, -18
and bl, sil
test bl, -9
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
or al, dl
or bl, 43
xor sil, -15
xor di, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
