.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
jb .bb_0.1
jmp .exit_0
.bb_0.1:
not edx
test sil, 97
movsx di, bl
cmp ebx, -33
add ecx, 94
or al, 100
bts si, dx
or ax, 19104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
