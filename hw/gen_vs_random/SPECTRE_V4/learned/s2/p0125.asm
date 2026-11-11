.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 32
and al, -28
or dl, bl
xchg rcx, rax
xchg bl, cl
test dl, -81
xor al, bl
cmp eax, 64
dec dl
add cl, dl
sbb al, 66
or sil, -47
test bl, dil
xor al, 118
or al, al
test al, -38
cmp al, 98
and cl, 32
or al, dl
dec cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
