.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 107
mov dx, 22195
sbb dl, cl
xor al, cl
or cl, al
jmp .bb_0.1
.bb_0.1:
cmovb cx, di
xchg ecx, edx
test sil, dil
add cl, -62
cmp cl, bl
test dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
