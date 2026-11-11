.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
adc dil, al
cmp rax, 2052654950
add cl, al
test dl, bl
jmp .bb_0.1
.bb_0.1:
or di, 29
and cl, cl
inc sil
sub sil, -35
xor ax, -17712
and al, 41
sub cl, 18
or eax, -1341747033
add sil, dl
add dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
