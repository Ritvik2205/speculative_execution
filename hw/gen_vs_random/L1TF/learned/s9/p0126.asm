.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rcx, rax
or bx, 90
btc cx, ax
test al, -104
or al, -5
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
