.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and bl, dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
test sil, dil
xor bl, -27
or sil, -49
xor rax, -91
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
btr dx, si
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
or rax, 1461812833
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
