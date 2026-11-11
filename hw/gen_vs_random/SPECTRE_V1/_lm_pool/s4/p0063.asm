.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
or bl, al
test cl, -24
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
xor edx, 99
and cx, 53
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub cx, 92
add bl, bl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 16
xor cx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
