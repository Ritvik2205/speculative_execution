.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and bl, 68
test al, sil
test rax, 1978892575
btr bx, dx
xor cl, 24
xor bl, -27
test cl, 62
and sil, sil
and al, dil
btc eax, 40
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
