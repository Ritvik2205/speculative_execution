.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 36
sub cl, 92
cmp dil, 53
or al, 27
and dil, -23
test dl, 24
test bl, 78
add bl, dil
xor al, cl
or dl, al
or dl, dl
or cl, cl
or dl, al
add al, 40
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
adc al, sil
add al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
