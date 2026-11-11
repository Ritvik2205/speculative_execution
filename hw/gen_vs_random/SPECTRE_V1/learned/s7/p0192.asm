.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
test sil, 97
sub cl, al
sub dil, dl
or dl, al
test al, 34
add al, -13
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dx, 24
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
