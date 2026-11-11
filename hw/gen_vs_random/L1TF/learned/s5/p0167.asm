.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor dl, cl
cmp rdi, 20
or al, -2
and eax, -409673666
test edx, -541774418
and bl, 89
and bl, 89
cmp rax, 16650668
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
lea rsi, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
