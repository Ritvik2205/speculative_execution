.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rax, rax
add cl, -127
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 92
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
sub al, dil
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
adc edx, 97
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
adc rdx, 95
cmp ax, bx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, -38
and rax, 0b1111111111111 # instrumentation
lea ecx, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
setz al
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
