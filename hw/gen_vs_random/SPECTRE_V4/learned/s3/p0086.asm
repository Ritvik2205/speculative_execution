.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 74
test dl, -125
xor dl, -66
or dil, cl
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rbx]
cmp dil, dil
cmp al, 98
test dl, 114
sbb al, 66
cmp al, 109
and al, dil
add bl, cl
add dl, dil
or cx, -74
and al, -12
sbb al, -4
imul rcx, rsi, -43
test eax, -31785616
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
