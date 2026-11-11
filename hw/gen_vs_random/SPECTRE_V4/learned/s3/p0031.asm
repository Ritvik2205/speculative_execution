.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -16
xor dl, dil
or al, 27
sub al, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
sub dl, -16
add dil, sil
or si, 85
mov dl, cl
xchg rdi, rcx
or cl, bl
neg dl
or al, -19
xchg esi, ecx
add al, sil
sub cl, -127
or ax, -29521
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
adc sil, bl
test dl, -125
adc dil, cl
and cl, dl
or cl, -104
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
sub dl, 107
test cl, 78
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
adc dl, 74
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 98
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
xor dl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
