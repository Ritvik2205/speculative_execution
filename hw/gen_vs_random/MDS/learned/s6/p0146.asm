.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 9
xor cx, -18
btr esi, eax
xor dl, -59
xor sil, -126
or rsi, 50
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
btc dx, 146
xor al, 55
jmp .bb_0.2
.bb_0.2:
or al, sil
and si, -121
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor sil, -126
xor al, 34
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
