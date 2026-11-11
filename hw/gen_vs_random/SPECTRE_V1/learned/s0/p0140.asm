.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
add al, 18
xchg esi, edi
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp dil, al
sub dl, bl
dec bl
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
