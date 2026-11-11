.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and si, -121
or dl, cl
and dl, -73
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btc ecx, esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 452940266
test bx, 25542
xor al, -4
test si, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
