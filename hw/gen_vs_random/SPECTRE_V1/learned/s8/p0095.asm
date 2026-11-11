.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
test dl, -105
sub bl, -6
lea ax, qword ptr [rdx + rbx]
cmp al, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, dil
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
or eax, -1161451853
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
