.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
or eax, 1725503461
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
not bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
xor si, 91
and bl, 68
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
test al, sil
test al, dil
xor al, -4
and bl, 68
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
