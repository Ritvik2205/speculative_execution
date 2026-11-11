.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
sbb eax, 1392087754
cmp rsi, 53
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 57
and dil, -114
cmp bx, 52
add al, -109
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
