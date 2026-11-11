.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor al, dil
or dl, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and bl, 68
xor rdx, -59
and di, 99
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and al, 84
or cl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
