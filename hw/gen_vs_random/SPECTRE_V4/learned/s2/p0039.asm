.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 67
adc ax, si
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
adc eax, -1513455903
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 33
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
sbb rcx, 88
test dx, 34
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 31
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
test al, 66
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovnl edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
