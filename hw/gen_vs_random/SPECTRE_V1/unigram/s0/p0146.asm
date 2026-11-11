.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
test ecx, 57
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
sbb bl, -41
or ecx, 50
btc edx, 169
add cl, -93 # instrumentation
not rbx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
cmovle si, di
cmovl ebx, edx
mul cx
lea rdx, qword ptr [rsi + rdi + 28]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
lea ecx, qword ptr [rdx + rcx + 2]
add sil, -95 # instrumentation
lea si, qword ptr [rdx + rdx + 26]
or rcx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
