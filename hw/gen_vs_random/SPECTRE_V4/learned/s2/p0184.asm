.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -16
or dl, al
cmp dl, cl
test al, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
xor cl, dl
adc al, dl
add cl, sil
or eax, 185586366
add al, bl
and dil, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
sbb sil, -124
sub bl, sil
xor al, bl
xor al, sil
add al, -127
sbb bl, -75
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
sbb ax, 1843
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
