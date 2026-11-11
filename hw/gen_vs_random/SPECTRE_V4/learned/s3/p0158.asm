.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
xor si, -73
or cl, 12
xor ax, 15671
cmp rax, -1247892360
sub cl, al
or bl, bl
dec dl
and cl, bl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
adc cl, -86
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
sub al, 69
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
