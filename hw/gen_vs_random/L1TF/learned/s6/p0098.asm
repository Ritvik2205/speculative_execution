.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
xor al, bl
and rax, 1163013815
test eax, 645518295
jmp .bb_0.1
.bb_0.1:
add dil, -7
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and al, -68
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 92
and al, -68
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
