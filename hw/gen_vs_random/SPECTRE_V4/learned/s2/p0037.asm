.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
mov sil, dil
test eax, -31785616
or al, bl
add bl, cl
add bl, cl
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 100
cmp al, -122
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sbb sil, -124
sbb ax, 7207
add ebx, -57
test dil, -58
test cl, bl
sub ebx, 96
add al, 40
and ax, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
