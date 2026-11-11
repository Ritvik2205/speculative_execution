.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
cmp ebx, -19
sbb bl, 121
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor cx, -80
test cl, -31
mov cl, sil
sub cx, -114
test bl, al
or dil, dl
adc cl, bl
test al, 27
and al, 41
xor cx, -80
sub dil, -11
add al, 19
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
