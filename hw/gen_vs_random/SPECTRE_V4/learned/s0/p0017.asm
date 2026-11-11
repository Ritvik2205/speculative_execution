.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 32
test al, 27
dec al
sub cl, -127
mov dl, bl
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
dec sil
add dl, sil
and sil, -84
sub rcx, -74
sbb bl, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 57
and cl, sil
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
add al, -1
sbb bl, dil
sbb dil, 45
cmp bl, dil
add al, -127
cmp al, -122
test al, -24
and cx, -117
sbb dl, 75
mov bl, cl
adc dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
