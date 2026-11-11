.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or eax, 678817098
test al, cl
xor al, 115
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
jmp .bb_0.1
.bb_0.1:
btr cx, dx
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rbx
or eax, 1725503461
not sil
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
