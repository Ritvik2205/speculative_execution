.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmp cl, dl
xor al, 54
cmp bl, sil
cmp dl, bl
test al, 34
xor dl, 71
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 70
add bl, dl
test dl, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
