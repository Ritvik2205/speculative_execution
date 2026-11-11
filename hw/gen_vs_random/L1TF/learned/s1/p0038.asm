.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, sil
add al, 74
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor sil, al
inc dl
and dx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
