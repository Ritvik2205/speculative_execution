.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 59
and dl, 124
inc cl
cmp cl, bl
mov dil, cl
dec sil
xchg edx, esi
test sil, 1
movzx ax, dl
sub bl, cl
cmp dl, 23
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test edx, -38580719
adc al, sil
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
