.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
not sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
xor bl, 67
xor bl, sil
and al, 106
and dil, dil
xor al, -4
xor dil, al
xor rbx, 89
or rcx, 54
xor al, 55
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdx, 19
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
test rsi, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
