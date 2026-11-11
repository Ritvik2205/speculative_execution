.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
or dil, dl
test al, 66
test al, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
test al, -81
xor dl, -59
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
bts ebx, 205
xor al, 34
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
