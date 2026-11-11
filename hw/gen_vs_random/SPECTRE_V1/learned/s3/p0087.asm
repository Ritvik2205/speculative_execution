.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
sbb al, bl
xor dl, bl
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
setno sil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
sub edi, 35
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
cmovs rax, rdi
adc sil, -115
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
