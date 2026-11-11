.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -47 # instrumentation
sbb cl, 115
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
imul rsi, rax, 76
cmovo rsi, rsi
cmp rax, rsi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
sbb bl, dl
btc di, bx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
