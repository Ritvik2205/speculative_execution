.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test rdx, 29
test dil, -51
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
test dil, 46
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
test cl, al
test cl, 73
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dil, -62
or al, -22
bt si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
