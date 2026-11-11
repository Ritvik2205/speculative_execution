.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
or al, -75
xor dil, -5
or dil, -78
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor sil, -46
xor bl, -27
jmp .bb_0.1
.bb_0.1:
or al, -78
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or sil, cl
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
