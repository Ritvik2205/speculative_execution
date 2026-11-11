.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
bts rcx, rdi
or al, 16
or bl, cl
and al, 106
xor bl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and dl, dl
or al, -61
xor bl, cl
and dil, -62
or al, 30
or rdi, -11
xor ax, 23633
test ebx, -2015966884
and ax, -16061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
