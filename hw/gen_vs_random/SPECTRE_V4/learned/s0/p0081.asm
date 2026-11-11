.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test al, -38
or al, -88
add cl, bl
sub sil, -35
and bl, -60
cmp al, bl
add dl, al
test dl, 114
sbb dil, dl
test bl, cl
test al, 52
xor dl, dil
test cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
