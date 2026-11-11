.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 54
test dl, cl
bt di, si
and sil, 89
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
and di, 91
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
xor rcx, -2
not al
and al, 75
and cl, -71
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
or sil, -78
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
