.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
test rsi, 90
add al, dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, -115
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and bl, 46
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
sub cl, 23
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 21
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
inc al
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
mul cl
bt si, bx
add cl, 32 # instrumentation
sbb al, cl
mov dx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
