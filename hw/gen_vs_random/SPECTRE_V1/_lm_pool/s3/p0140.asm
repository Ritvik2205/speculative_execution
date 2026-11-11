.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
lea rdx, qword ptr [rcx + rbx + 67]
sub bl, -6
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
test al, 34
or edi, 54
cmp edx, 44
add sil, bl
lea bx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
