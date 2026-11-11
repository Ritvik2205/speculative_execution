.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
xor dl, sil
and cx, -2
test dil, dl
test si, 10
or cl, dil
test sil, 41
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btc ebx, 149
or al, bl
or sil, cl
or dl, -31
and sil, -9
or al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
