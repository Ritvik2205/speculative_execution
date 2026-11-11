.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
lea rsi, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
sub bx, 99
sbb eax, -108
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
sbb dl, al
lea rax, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
add al, -46 # instrumentation
cmovbe rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
sub dil, bl
adc bl, -73
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
