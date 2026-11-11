.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rcx
sub dx, -23
cmovb rcx, rsi
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
test sil, 97
add al, -89 # instrumentation
sbb eax, edx
add edi, -91
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 4
or cl, -62
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor sil, dl
add bl, 78 # instrumentation
adc bx, 46
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
not di
and rcx, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
