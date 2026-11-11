.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
test ax, -11534
xor sil, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.1
.bb_0.1:
or al, bl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
xor al, 34
xor dl, 40
test cl, -18
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or bl, 100
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
