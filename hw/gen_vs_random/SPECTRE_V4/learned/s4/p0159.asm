.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 91
xor bl, dil
add cl, dl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
dec dl
add dil, bl
neg al
test cl, -31
and al, 92
cmp al, -122
btc rax, rdi
sub al, 54
or bl, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
