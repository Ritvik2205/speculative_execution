.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 82
test dl, dil
test eax, 424329527
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and ax, 31082
or cx, -42
xor eax, 571592471
xor al, 99
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
