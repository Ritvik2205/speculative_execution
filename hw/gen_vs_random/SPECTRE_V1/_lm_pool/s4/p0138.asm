.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
or rcx, 75
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
test dl, -7
xchg cl, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
btc ax, bx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnz rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
