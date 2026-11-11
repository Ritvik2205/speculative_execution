.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
lea ax, qword ptr [rcx]
sub sil, -18
cmovnle rbx, rsi
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
test bl, -8
or al, 100
test al, -99
test ax, 636
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
