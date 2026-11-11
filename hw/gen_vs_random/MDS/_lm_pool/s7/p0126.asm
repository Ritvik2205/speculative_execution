.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor si, 80
and al, 87
or sil, dl
or bl, sil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
test bl, 65
xor rdi, -9
xor rcx, -2
and al, 106
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
test dl, sil
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
