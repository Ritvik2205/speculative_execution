.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, di
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
add sil, al
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and edi, ecx
imul bx, ax, 85
bswap rbx
test dl, 84
add cl, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
