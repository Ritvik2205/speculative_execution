.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16232
cmp edi, 89
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, -5
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 91
cmp dil, 46
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
lea rdx, qword ptr [rsi + rcx + 28]
cmp bx, 90
xor ax, 34
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
