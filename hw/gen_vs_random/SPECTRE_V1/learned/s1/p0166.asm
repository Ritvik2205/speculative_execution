.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb dil, cl
sub al, -1
add al, dl
cmp dl, cl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
sbb sil, al
xor sil, -33
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
