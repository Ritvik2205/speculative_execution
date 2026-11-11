.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -32
and bl, -30
test cl, 78
test cl, -10
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor bl, 27
sbb dil, 29
add cl, bl
or dl, 71
cmp rdx, -49
sub dil, 65
or dx, 1
add dl, cl
add bl, -38
mov bl, sil
sub cl, al
and al, dil
jmp .bb_0.1
.bb_0.1:
add bl, cl
xor al, 23
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
mov dl, al
xor bl, dl
xor di, 92
adc sil, cl
add al, -6
xor dil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
