.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], di
lea rax, qword ptr [rdi]
sbb dl, 127
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and bl, sil
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
setnle bl
xor dl, dil
lea si, qword ptr [rcx + rdx + 93]
cmp al, dl
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
