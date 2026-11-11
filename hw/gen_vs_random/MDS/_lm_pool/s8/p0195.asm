.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and al, -114
test al, 66
or bl, dil
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
bt bx, ax
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor al, -26
test rax, -1579405415
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
