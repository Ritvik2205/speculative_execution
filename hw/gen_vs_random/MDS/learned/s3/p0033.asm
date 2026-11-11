.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
test al, cl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and ecx, -104
or al, cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
test dil, 46
and al, sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
