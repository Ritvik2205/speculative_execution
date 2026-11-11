.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
xor rax, 20
and al, -68
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
or rax, -443578116
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 73
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
lea rax, qword ptr [rdi + rdx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 72
test cx, 13
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
