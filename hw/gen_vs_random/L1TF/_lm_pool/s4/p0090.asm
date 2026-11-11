.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc edi, esi
mov dil, 68
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
test sil, 29
btc bx, ax
test al, -84
add bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
