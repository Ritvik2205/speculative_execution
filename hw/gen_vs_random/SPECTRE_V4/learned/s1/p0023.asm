.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 106
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
cmp al, 109
add al, -112
movsx bx, sil
inc ecx
cmp cl, 49
adc dl, sil
and dx, -107
sub ax, -1908
or si, -84
neg dl
sub bl, cl
add dil, dl
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
