.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov cl, dl
xor sil, 81
cmp dl, 83
jmp .bb_0.1
.bb_0.1:
add bl, cl
or ax, -26182
sub ax, cx
or al, bl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 95
sbb bl, 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
