.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ecx, esi
adc dl, -12
lea ax, qword ptr [rbx + rsi + 91]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and cl, al
xor bl, cl
or al, -48
and ax, 7954
dec al
test al, -56
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
