.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
xor rax, 459999114
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
test cl, 91
xor dil, -5
btc eax, 40
xor dl, -59
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 51
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
jmp .bb_0.3
.bb_0.3:
and ax, -10351
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
test cl, -113
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test cl, 73
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
