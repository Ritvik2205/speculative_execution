.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
imul al
add rax, 913062684
xor bl, dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 87
test dil, -116
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
xchg al, dil
test si, 96
setz cl
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
