.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and ax, 23118
sbb cl, bl
test al, 34
sbb dil, -106
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmp cx, 19
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
