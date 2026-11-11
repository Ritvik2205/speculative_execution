.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 20
test sil, dl
or cl, 105
lea rdi, qword ptr [rdi + rsi]
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
lea ax, qword ptr [rdx]
add bl, 115 # instrumentation
lea edx, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
sub rax, rdi
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and eax, -409673666
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
