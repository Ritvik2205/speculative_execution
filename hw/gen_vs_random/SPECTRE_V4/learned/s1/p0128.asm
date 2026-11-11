.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
sub di, cx
jmp .bb_0.1
.bb_0.1:
mov al, -71
sub sil, 71
or bx, -33
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
sub si, -92
cmp rcx, -121
add dil, bl
and al, -118
or cl, -104
and al, 85
xor rax, -1522567562
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
